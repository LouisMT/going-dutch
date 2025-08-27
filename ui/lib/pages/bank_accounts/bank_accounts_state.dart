import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

sealed class BankAccountsState {
  const BankAccountsState();
}

class BankAccountsLoadingState extends BankAccountsState {
  const BankAccountsLoadingState();
}

class BankAccountsLoadedState extends BankAccountsState {
  final ListBankAccountsResponse response;

  const BankAccountsLoadedState({required this.response});
}

class BankAccountsErrorState extends BankAccountsState {
  const BankAccountsErrorState();
}
