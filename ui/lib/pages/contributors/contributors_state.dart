import 'package:going_dutch_ui/repositories/contributor_repository.dart';

sealed class ContributorsState {
  const ContributorsState();
}

class ContributorsLoadingState extends ContributorsState {
  const ContributorsLoadingState();
}

class ContributorsLoadedState extends ContributorsState {
  final ListContributorsResponse response;

  const ContributorsLoadedState({required this.response});
}

class ContributorsErrorState extends ContributorsState {
  const ContributorsErrorState();
}
