namespace Infrastructure.Postgres.Entities;

public class BankAccountEntity
{
    public required long Id { get; init; }

    public required string Name { get; init; }
}