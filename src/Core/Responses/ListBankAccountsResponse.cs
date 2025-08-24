namespace Core.Responses;

public record ListBankAccountsResponse(
    IEnumerable<ListBankAccountItemResponse> Items
);
