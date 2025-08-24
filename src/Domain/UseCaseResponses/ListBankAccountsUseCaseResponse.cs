namespace Domain.UseCaseResponses;

public record ListBankAccountsUseCaseResponse(
    IReadOnlyCollection<ListBankAccountItemUseCaseResponse> Items
);
