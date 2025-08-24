namespace Domain.UseCaseResponses;

public record ListSplitRulesUseCaseResponse(
    IReadOnlyCollection<ListSplitRuleItemUseCaseResponse> Items
);
