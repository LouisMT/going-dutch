import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';

class ContributorsCubit extends Cubit<ContributorsState> {
  ContributorsCubit()
    : super(ContributorsState(status: ContributorsStatus.loading, items: [])) {
    unawaited(load());
  }

  Future<void> load() async {
    try {
      emit(state.copyWith(status: ContributorsStatus.loading, items: []));

      final response = await listContributors();

      emit(
        state.copyWith(
          status: ContributorsStatus.loaded,
          items: response.items,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ContributorsStatus.error, items: []));
    }
  }
}
