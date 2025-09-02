import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

part 'bank_accounts_state.freezed.dart';

enum BankAccountsStatus { loading, loaded, error }

@freezed
sealed class BankAccountsState with _$BankAccountsState {
  factory BankAccountsState({
    required BankAccountsStatus status,
    required List<ListBankAccountItemResponse> items,
  }) = _BankAccountsState;
}
