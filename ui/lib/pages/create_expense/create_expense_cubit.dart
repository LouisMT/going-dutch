import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/create_expense/create_expense_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';
import 'package:going_dutch_ui/repositories/expense_repository.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

class CreateExpenseCubit extends Cubit<CreateExpenseState> {
  CreateExpenseCubit()
    : super(
        CreateExpenseState(
          status: CreateExpenseStatus.pending,
          splitRules: [],
          bankAccounts: [],
          splitRule: null,
          bankAccount: null,
          name: '',
          description: '',
          amount: 0,
        ),
      ) {
    unawaited(load());
  }

  void setSplitRule(ListSplitRuleItemResponse? splitRule) {
    emit(state.copyWith(splitRule: splitRule));
  }

  void setBankAccount(ListBankAccountItemResponse? bankAccount) {
    emit(state.copyWith(bankAccount: bankAccount));
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setDescription(String description) {
    emit(state.copyWith(description: description));
  }

  void setAmount(double amount) {
    emit(state.copyWith(amount: amount));
  }

  Future<void> load() async {
    try {
      emit(state.copyWith(status: CreateExpenseStatus.loading));

      final (splitRules, bankAccounts) = await (
        listSplitRules(),
        listBankAccounts(),
      ).wait;

      emit(
        state.copyWith(
          status: CreateExpenseStatus.pending,
          splitRules: splitRules.items,
          bankAccounts: bankAccounts.items,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CreateExpenseStatus.error,
          splitRules: [],
          bankAccounts: [],
        ),
      );
    }
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(status: CreateExpenseStatus.loading));

      final request = CreateExpenseRequest(
        splitRuleId: state.splitRule!.id,
        bankAccountId: state.bankAccount!.id,
        name: state.name,
        description: state.description,
        amount: state.amount,
      );

      await createExpense(request);

      emit(state.copyWith(status: CreateExpenseStatus.created));
    } catch (e) {
      emit(state.copyWith(status: CreateExpenseStatus.error));
    }
  }
}
