namespace Domain.UseCaseResponses;

public record ListExpensesUseCaseResponse(
    IReadOnlyCollection<ListExpenseItemUseCaseResponse> Items
);
