import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

sealed class SplitRulesState {
  const SplitRulesState();
}

class SplitRulesLoadingState extends SplitRulesState {
  const SplitRulesLoadingState();
}

class SplitRulesLoadedState extends SplitRulesState {
  final ListSplitRulesResponse response;

  const SplitRulesLoadedState({required this.response});
}

class SplitRulesErrorState extends SplitRulesState {
  const SplitRulesErrorState();
}
