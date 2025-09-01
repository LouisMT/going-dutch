import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

class CreateSplitRuleCubit extends Cubit<CreateSplitRuleState> {
  CreateSplitRuleCubit()
    : super(
        CreateSplitRuleState(
          entries: [],
          contributors: [],
          finished: false,
          name: '',
        ),
      ) {
    loadContributors();
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void addContributor() {
    emit(
      state.copyWith(
        entries: [...state.entries, Entry(contributorId: null, share: null)],
      ),
    );
  }

  void setContributorId(int index, int contributorId) {
    final entries = state.entries
        .mapIndexed(
          (i, e) => i == index ? e.copyWith(contributorId: contributorId) : e,
        )
        .toList();
    emit(state.copyWith(entries: entries));
  }

  void setShare(int index, double share) {
    final entries = state.entries
        .mapIndexed((i, e) => i == index ? e.copyWith(share: share) : e)
        .toList();
    emit(state.copyWith(entries: entries));
  }

  Future<void> loadContributors() async {
    final contributors = await listContributors();

    emit(state.copyWith(contributors: contributors.items));
  }

  Future<void> submit() async {
    final request = CreateSplitRuleRequest(
      name: state.name,
      entries: state.entries
          .map(
            (e) => CreateSplitRuleEntryRequest(
              contributorId: e.contributorId!,
              share: e.share!,
            ),
          )
          .toList(),
    );

    await createSplitRule(request);
    emit(state.copyWith(finished: true));
  }
}
