import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

class BankAccountsCubit extends Cubit<BankAccountsState> {
  BankAccountsCubit()
    : super(BankAccountsState(status: BankAccountsStatus.loading, items: [])) {
    unawaited(load());
  }

  Future<void> load() async {
    try {
      emit(state.copyWith(status: BankAccountsStatus.loading));

      final response = await listBankAccounts();

      emit(
        state.copyWith(
          status: BankAccountsStatus.loaded,
          items: response.items,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: BankAccountsStatus.error, items: []));
    }
  }
}
