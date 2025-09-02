import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_state.dart';
import 'package:going_dutch_ui/repositories/contributor_repository.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';

class CreateSplitRuleCubit extends Cubit<CreateSplitRuleState> {
  CreateSplitRuleCubit()
    : super(
        CreateSplitRuleState(
          status: CreateSplitRuleStatus.loading,
          contributors: [],
          name: '',
          entries: [Entry(contributor: null, share: 0)],
        ),
      ) {
    unawaited(loadContributors());
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void addContributor() {
    emit(
      state.copyWith(
        entries: [...state.entries, Entry(contributor: null, share: 0)],
      ),
    );
  }

  void setContributor(int index, ListContributorItemResponse? contributor) {
    final entries = state.entries
        .mapIndexed(
          (i, e) => i == index ? e.copyWith(contributor: contributor) : e,
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
    try {
      emit(state.copyWith(status: CreateSplitRuleStatus.loading));

      final contributors = await listContributors();

      emit(
        state.copyWith(
          status: CreateSplitRuleStatus.pending,
          contributors: contributors.items,
        ),
      );
    } catch (e, s) {
      emit(
        state.copyWith(status: CreateSplitRuleStatus.error, contributors: []),
      );
    }
  }

  Future<void> submit() async {
    try {
      final request = CreateSplitRuleRequest(
        name: state.name,
        entries: state.entries
            .map(
              (e) => CreateSplitRuleEntryRequest(
                contributorId: e.contributor!.id,
                share: e.share,
              ),
            )
            .toList(),
      );

      await createSplitRule(request);

      emit(state.copyWith(status: CreateSplitRuleStatus.created));
    } catch (e, s) {
      emit(state.copyWith(status: CreateSplitRuleStatus.error));
    }
  }
}
