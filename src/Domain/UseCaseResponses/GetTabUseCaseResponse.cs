namespace Domain.UseCaseResponses;

public record GetTabUseCaseResponse(
    string Name,
    DateTimeOffset? ClosedAt
);
