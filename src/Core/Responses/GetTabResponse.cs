namespace Core.Responses;

public record GetTabResponse(
    string Name,
    DateTimeOffset? ClosedAt
);
