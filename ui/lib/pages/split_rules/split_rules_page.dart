import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_cubit.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_state.dart';

class SplitRulesPage extends StatelessWidget {
  const SplitRulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoingDutch - SplitRules'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => context.go('/split-rules/create'),
          ),
        ],
      ),
      body: BlocProvider(
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
    return Center(
      child: BlocBuilder<SplitRulesCubit, SplitRulesState>(
        builder: (context, state) => switch (state) {
          SplitRulesLoadingState() => CircularProgressIndicator(),
          SplitRulesErrorState() => Text('Error while loading split rules'),
          SplitRulesLoadedState() => ListView(
            children: state.response.items.map((i) {
              return Card(
                child: ListTile(
                  title: Text(i.name),
                  subtitle: Text('#${i.id}'),
                ),
              );
            }).toList(),
          ),
        },
      ),
    );
  }
}
