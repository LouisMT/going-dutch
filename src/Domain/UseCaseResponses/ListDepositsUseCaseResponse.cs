namespace Domain.UseCaseResponses;

public record ListDepositsUseCaseResponse(
    IReadOnlyCollection<ListDepositItemUseCaseResponse> Items
);
