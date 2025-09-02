import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

part 'split_rules_state.freezed.dart';

enum SplitRulesStatus { loading, loaded, error }

@freezed
sealed class SplitRulesState with _$SplitRulesState {
  factory SplitRulesState({
    required SplitRulesStatus status,
    required List<ListSplitRuleItemResponse> items,
  }) = _SplitRulesState;
}
