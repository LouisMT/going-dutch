import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

class CreateContributorCubit extends Cubit<CreateContributorState> {
  CreateContributorCubit()
    : super(
        CreateContributorState(
          status: CreateContributorStatus.pending,
          name: '',
        ),
      );

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(status: CreateContributorStatus.loading));

      final request = CreateContributorRequest(name: state.name);
      await createContributor(request);

      emit(state.copyWith(status: CreateContributorStatus.created));
    } catch (e, s) {
      emit(state.copyWith(status: CreateContributorStatus.error));
    }
  }
}
