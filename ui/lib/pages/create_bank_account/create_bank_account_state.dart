sealed class CreateBankAccountState {
  const CreateBankAccountState();
}

class CreateBankAccountPendingState extends CreateBankAccountState {
  const CreateBankAccountPendingState();
}

class CreateBankAccountFinishedState extends CreateBankAccountState {
  const CreateBankAccountFinishedState();
}
