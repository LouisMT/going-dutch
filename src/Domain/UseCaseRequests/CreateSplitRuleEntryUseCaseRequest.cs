namespace Domain.UseCaseRequests;

public record CreateSplitRuleEntryUseCaseRequest(
    long ContributorId,
    decimal Share
);
