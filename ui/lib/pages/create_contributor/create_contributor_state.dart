sealed class CreateContributorState {
  const CreateContributorState();
}

class CreateContributorPendingState extends CreateContributorState {
  const CreateContributorPendingState();
}

class CreateContributorFinishedState extends CreateContributorState {
  const CreateContributorFinishedState();
}
