namespace Core.Responses;

public record ListExpensesResponse(
    IEnumerable<ListExpenseItemResponse> Items
);
