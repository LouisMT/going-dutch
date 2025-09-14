import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/expenses/expenses_state.dart';
import 'package:going_dutch_ui/repositories/expense_repository.dart';

class ExpensesCubit extends Cubit<ExpensesState> {
  ExpensesCubit()
    : super(ExpensesState(status: ExpensesStatus.loading, items: [])) {
    unawaited(load());
  }

  Future<void> load() async {
    try {
      emit(state.copyWith(status: ExpensesStatus.loading, items: []));

      final response = await listExpenses();

      emit(
        state.copyWith(status: ExpensesStatus.loaded, items: response.items),
      );
    } catch (e) {
      emit(state.copyWith(status: ExpensesStatus.error, items: []));
    }
  }
}
