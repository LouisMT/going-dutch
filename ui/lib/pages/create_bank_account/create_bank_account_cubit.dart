import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

class CreateBankAccountCubit extends Cubit<CreateBankAccountState> {
  CreateBankAccountCubit()
    : super(
        CreateBankAccountState(
          status: CreateBankAccountStatus.pending,
          name: '',
        ),
      );

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(status: CreateBankAccountStatus.loading));

      final request = CreateBankAccountRequest(name: state.name);
      await createBankAccount(request);

      emit(state.copyWith(status: CreateBankAccountStatus.created));
    } catch (e, s) {
      emit(state.copyWith(status: CreateBankAccountStatus.error));
    }
  }
}
