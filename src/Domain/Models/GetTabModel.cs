namespace Domain.Models;

public record GetTabModel(
    string Name,
    DateTimeOffset? ClosedAt
);
