import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_cubit.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class SplitRulesPage extends StatelessWidget {
  const SplitRulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(
        title: Text('Split Rules'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            CommandBarButton(
              icon: Icon(FluentIcons.add),
              label: Text('Create'),
              onPressed: () => context.goNamed(RouteNames.createSplitRule),
            ),
          ],
        ),
      ),
      content: BlocProvider(
        create: (_) => SplitRulesCubit(),
        child: SplitRulesContent(),
      ),
    );
  }
}

class SplitRulesContent extends StatelessWidget {
  const SplitRulesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplitRulesCubit, SplitRulesState>(
      builder: (context, state) => switch (state.status) {
        SplitRulesStatus.loading => Center(child: ProgressRing()),
        SplitRulesStatus.error => Center(
          child: InfoBar(
            title: Text('Failed to load split rules'),
            severity: InfoBarSeverity.error,
          ),
        ),
        SplitRulesStatus.loaded => ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final item = state.items[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text('#${item.id}'),
            );
          },
        ),
      },
    );
  }
}
