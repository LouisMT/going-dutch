namespace Domain.UseCaseResponses;

public record ListTabsUseCaseResponse(
    IReadOnlyCollection<ListTabItemUseCaseResponse> Items
);
