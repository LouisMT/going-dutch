namespace Infrastructure.Postgres.Entities;

public class ExpenseEntity
{
    public required long Id { get; init; }

    public required string Name { get; init; }
}
