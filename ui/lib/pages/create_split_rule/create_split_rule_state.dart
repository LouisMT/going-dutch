import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

part 'create_split_rule_state.freezed.dart';

@freezed
class CreateSplitRuleState with _$CreateSplitRuleState {
  final List<Entry> entries;

  final List<ListContributorItemResponse> contributors;

  final bool finished;

  final String name;

  const CreateSplitRuleState({
    required this.entries,
    required this.contributors,
    required this.finished,
    required this.name,
  });
}

@freezed
class Entry with _$Entry {
  int? contributorId;

  double? share;

  Entry({required this.contributorId, this.share});
}
