import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

class CreateBankAccountCubit extends Cubit<CreateBankAccountState> {
  String name = '';

  CreateBankAccountCubit() : super(CreateBankAccountPendingState());

  void setName(String name) {
    this.name = name;
  }

  Future<void> submit() async {
    final request = CreateBankAccountRequest(name: name);
    await createBankAccount(request);
    emit(CreateBankAccountFinishedState());
  }
}
