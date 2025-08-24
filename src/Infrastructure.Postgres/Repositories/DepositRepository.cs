using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class DepositRepository(
    NpgsqlConnection connection
) : IDepositRepository
{
    public async Task<long> Create(long contributorId, long bankAccountId, decimal amount)
    {
        const string sql =
            """
            INSERT INTO deposits (contributor_id, bank_account_id, amount)
            VALUES (@ContributorId, @BankAccountId, @Amount)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            ContributorId = contributorId,
            BankAccountId = bankAccountId,
            Amount = amount
        });
    }

    public async Task<IReadOnlyCollection<Deposit>> List()
    {
        const string sql =
            """
            SELECT id
            FROM deposits
            """;

        var rows = await connection.QueryAsync<ListDepositEntity>(sql);

        return rows.Select(r => new Deposit(
            Id: r.Id
        )).ToList();
    }
}
