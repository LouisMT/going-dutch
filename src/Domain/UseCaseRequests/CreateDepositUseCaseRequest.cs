namespace Domain.UseCaseRequests;

public record CreateDepositUseCaseRequest(
    long TabId,
    long ContributorId,
    long BankAccountId,
    decimal Amount
);
