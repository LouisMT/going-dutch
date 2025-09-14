import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_state.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

class SplitRulesCubit extends Cubit<SplitRulesState> {
  SplitRulesCubit()
    : super(SplitRulesState(status: SplitRulesStatus.loading, items: [])) {
    unawaited(load());
  }

  Future<void> load() async {
    try {
      emit(state.copyWith(status: SplitRulesStatus.loading));

      final response = await listSplitRules();

      emit(
        state.copyWith(status: SplitRulesStatus.loaded, items: response.items),
      );
    } catch (e) {
      emit(state.copyWith(status: SplitRulesStatus.error, items: []));
    }
  }
}
