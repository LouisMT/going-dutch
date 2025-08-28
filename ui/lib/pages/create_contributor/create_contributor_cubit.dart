import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

class CreateContributorCubit extends Cubit<CreateContributorState> {
  String name = '';

  CreateContributorCubit() : super(CreateContributorPendingState());

  void setName(String name) {
    this.name = name;
  }

  Future<void> submit() async {
    final request = CreateContributorRequest(name: name);
    await createContributor(request);
    emit(CreateContributorFinishedState());
  }
}
