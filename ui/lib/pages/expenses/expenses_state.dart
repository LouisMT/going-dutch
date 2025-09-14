import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/repositories/expense_repository.dart';

part 'expenses_state.freezed.dart';

enum ExpensesStatus { loading, loaded, error }

@freezed
sealed class ExpensesState with _$ExpensesState {
  factory ExpensesState({
    required ExpensesStatus status,
    required List<ListExpenseItemResponse> items,
  }) = _ExpensesState;
}
