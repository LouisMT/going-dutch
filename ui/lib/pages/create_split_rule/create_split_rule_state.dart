import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

part 'create_split_rule_state.freezed.dart';

enum CreateSplitRuleStatus { pending, loading, created, error }

@freezed
sealed class CreateSplitRuleState with _$CreateSplitRuleState {
  factory CreateSplitRuleState({
    required CreateSplitRuleStatus status,
    required List<ListContributorItemResponse> contributors,
    required String name,
    required List<Entry> entries,
  }) = _CreateSplitRuleState;
}

@freezed
sealed class Entry with _$Entry {
  factory Entry({
    required ListContributorItemResponse? contributor,
    required double share,
  }) = _Entry;
}
