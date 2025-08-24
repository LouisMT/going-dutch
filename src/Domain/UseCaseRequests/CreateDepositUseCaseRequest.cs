namespace Domain.UseCaseRequests;

public record CreateDepositUseCaseRequest(
    long ContributorId,
    long BankAccountId,
    decimal Amount
);
