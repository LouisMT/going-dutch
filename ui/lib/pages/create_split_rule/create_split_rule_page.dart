import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_cubit.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

class CreateSplitRulePage extends StatelessWidget {
  const CreateSplitRulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GoingDutch - Create Split Rule')),
      body: BlocProvider(
        create: (_) => CreateSplitRuleCubit(),
        child: BlocListener<CreateSplitRuleCubit, CreateSplitRuleState>(
          listener: (context, state) {
            if (state.finished) {
              context.go('/split-rules');
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
    return Form(
      child: Column(
        children: [
          TextFormField(
            onChanged: (text) {
              context.read<CreateSplitRuleCubit>().setName(text);
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CreateSplitRuleCubit>().addContributor();
            },
            child: Text('Add contributor'),
          ),
          BlocBuilder<CreateSplitRuleCubit, CreateSplitRuleState>(
            builder: (context, state) => switch (state) {
              CreateSplitRuleState() => Column(
                children: state.entries
                    .mapIndexed(
                      (i, e) => Column(
                        children: [
                          DropdownButtonFormField<ListContributorItemResponse>(
                            items: state.contributors
                                .map(
                                  (c) => DropdownMenuItem(
                                    value: c,
                                    child: Text(c.name),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              context
                                  .read<CreateSplitRuleCubit>()
                                  .setContributorId(i, value!.id);
                            },
                          ),
                          Slider(
                            value: e.share ?? 0,
                            onChanged: (value) {
                              context.read<CreateSplitRuleCubit>().setShare(
                                i,
                                value,
                              );
                            },
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CreateSplitRuleCubit>().submit();
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
