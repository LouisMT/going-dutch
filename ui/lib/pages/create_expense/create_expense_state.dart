import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

part 'create_expense_state.freezed.dart';

enum CreateExpenseStatus { pending, loading, created, error }

@freezed
sealed class CreateExpenseState with _$CreateExpenseState {
  factory CreateExpenseState({
    required CreateExpenseStatus status,
    required List<ListSplitRuleItemResponse> splitRules,
    required List<ListBankAccountItemResponse> bankAccounts,
    required ListSplitRuleItemResponse? splitRule,
    required ListBankAccountItemResponse? bankAccount,
    required String name,
    required String description,
    required double amount,
  }) = _CreateExpenseState;
}
