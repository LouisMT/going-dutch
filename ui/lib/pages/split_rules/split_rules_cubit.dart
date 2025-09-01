import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_state.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

class SplitRulesCubit extends Cubit<SplitRulesState> {
  SplitRulesCubit() : super(SplitRulesLoadingState()) {
    load();
  }

  Future<void> load() async {
    try {
      emit(SplitRulesLoadingState());

      final response = await listSplitRules();

      emit(SplitRulesLoadedState(response: response));
    } catch (e, s) {
      emit(SplitRulesErrorState());
    }
  }
}
