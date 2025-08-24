namespace Core.Responses;

public record ListDepositsResponse(
    IEnumerable<ListDepositItemResponse> Items
);
