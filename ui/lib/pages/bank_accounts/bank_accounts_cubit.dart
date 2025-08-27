import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

class BankAccountsCubit extends Cubit<BankAccountsState> {
  BankAccountsCubit() : super(BankAccountsLoadingState()) {
    load();
  }

  Future<void> load() async {
    try {
      emit(BankAccountsLoadingState());

      final response = await listBankAccounts();

      emit(BankAccountsLoadedState(response: response));
    } catch (e, s) {
      emit(BankAccountsErrorState());
    }
  }
}
