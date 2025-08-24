namespace Core.Responses;

public record ListSplitRulesResponse(
    IEnumerable<ListSplitRuleItemResponse> Items
);
