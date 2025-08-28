import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

class ContributorsCubit extends Cubit<ContributorsState> {
  ContributorsCubit() : super(ContributorsLoadingState()) {
    load();
  }

  Future<void> load() async {
    try {
      emit(ContributorsLoadingState());

      final response = await listContributors();

      emit(ContributorsLoadedState(response: response));
    } catch (e, s) {
      emit(ContributorsErrorState());
    }
  }
}
