namespace Domain.UseCaseResponses;

public record ListContributorsUseCaseResponse(
    IReadOnlyCollection<ListContributorItemUseCaseResponse> Items
);
