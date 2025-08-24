namespace Domain.UseCaseRequests;

public record CreateExpenseUseCaseRequest(
    long SplitRuleId,
    long BankAccountId,
    string Name,
    string Description,
    decimal Amount
);
