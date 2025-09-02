import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bank_account_state.freezed.dart';

enum CreateBankAccountStatus { pending, loading, created, error }

@freezed
sealed class CreateBankAccountState with _$CreateBankAccountState {
  factory CreateBankAccountState({
    required CreateBankAccountStatus status,
    required String name,
  }) = _CreateBankAccountState;
}
