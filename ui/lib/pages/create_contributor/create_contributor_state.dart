import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_contributor_state.freezed.dart';

enum CreateContributorStatus { pending, loading, created, error }

@freezed
sealed class CreateContributorState with _$CreateContributorState {
  factory CreateContributorState({
    required CreateContributorStatus status,
    required String name,
  }) = _CreateContributorState;
}
