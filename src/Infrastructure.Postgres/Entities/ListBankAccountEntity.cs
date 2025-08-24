namespace Infrastructure.Postgres.Entities;

public class ListBankAccountEntity
{
    public required long Id { get; init; }

    public required string Name { get; init; }
}