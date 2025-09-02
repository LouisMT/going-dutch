import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

part 'contributors_state.freezed.dart';

enum ContributorsStatus { loading, loaded, error }

@freezed
sealed class ContributorsState with _$ContributorsState {
  factory ContributorsState({
    required ContributorsStatus status,
    required List<ListContributorItemResponse> items,
  }) = _ContributorsState;
}
