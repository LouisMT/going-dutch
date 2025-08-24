namespace Infrastructure.Postgres.Entities;

public class GetTabEntity
{
    public required string Name { get; init; }

    public required DateTimeOffset? ClosedAt { get; init; }
}
