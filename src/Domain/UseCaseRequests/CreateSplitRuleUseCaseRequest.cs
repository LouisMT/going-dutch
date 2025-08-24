namespace Domain.UseCaseRequests;

public record CreateSplitRuleUseCaseRequest(
    string Name,
    IEnumerable<CreateSplitRuleEntryUseCaseRequest> Entries
);
