import 'package:collection/collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_cubit.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';
import 'package:going_dutch_ui/route_names.dart';

class CreateSplitRulePage extends StatelessWidget {
  const CreateSplitRulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Split Rule')),
      content: BlocProvider(
        create: (_) => CreateSplitRuleCubit(),
        child: BlocListener<CreateSplitRuleCubit, CreateSplitRuleState>(
          listener: (context, state) {
            if (state.status == CreateSplitRuleStatus.created) {
              context.goNamed(RouteNames.listSplitRules);
            }
          },
          child: CreateSplitRuleContent(),
        ),
      ),
    );
  }
}

class CreateSplitRuleContent extends StatelessWidget {
  const CreateSplitRuleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateSplitRuleCubit, CreateSplitRuleState>(
      builder: (context, state) => switch (state.status) {
        CreateSplitRuleStatus.loading ||
        CreateSplitRuleStatus.created => Center(child: ProgressRing()),
        CreateSplitRuleStatus.error => Center(
          child: InfoBar(
            title: Text('Failed to create split rule'),
            severity: InfoBarSeverity.error,
          ),
        ),
        CreateSplitRuleStatus.pending => Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              InfoLabel(
                label: 'Name:',
                child: TextBox(
                  onChanged: (text) {
                    context.read<CreateSplitRuleCubit>().setName(text);
                  },
                ),
              ),
              _Contributors(),
              Button(
                onPressed: () {
                  context.read<CreateSplitRuleCubit>().addContributor();
                },
                child: Text('Add contributor'),
              ),
              Button(
                onPressed: () {
                  context.read<CreateSplitRuleCubit>().submit();
                },
                child: Text('Create'),
              ),
            ],
          ),
        ),
      },
    );
  }
}

class _Contributors extends StatelessWidget {
  const _Contributors();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateSplitRuleCubit, CreateSplitRuleState>(
      builder: (context, state) => Column(
        spacing: 16,
        children: state.entries
            .mapIndexed(
              (i, e) => Row(
                spacing: 16,
                children: [
                  InfoLabel(
                    label: 'Contributor:',
                    child: ComboBox<ListContributorItemResponse>(
                      items: state.contributors
                          .map(
                            (c) => ComboBoxItem<ListContributorItemResponse>(
                              value: c,
                              child: Text(c.name),
                            ),
                          )
                          .toList(),
                      value: e.contributor,
                      onChanged: (value) {
                        context.read<CreateSplitRuleCubit>().setContributor(
                          i,
                          value,
                        );
                      },
                    ),
                  ),
                  InfoLabel(
                    label: 'Share:',
                    child: Slider(
                      max: 1,
                      label: '${e.share}',
                      value: e.share,
                      onChanged: (value) {
                        context.read<CreateSplitRuleCubit>().setShare(i, value);
                      },
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
