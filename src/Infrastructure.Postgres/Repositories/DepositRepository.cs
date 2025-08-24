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
    public async Task<long> Create(long tabId, long contributorId, long bankAccountId, decimal amount)
    {
        const string sql =
            """
            INSERT INTO deposits (tab_id, contributor_id, bank_account_id, amount)
            VALUES (@tTabId, @ContributorId, @BankAccountId, @Amount)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            TabId = tabId,
            ContributorId = contributorId,
            BankAccountId = bankAccountId,
            Amount = amount
        });
    }

    public async Task<IReadOnlyCollection<ListDepositModel>> List()
    {
        const string sql =
            """
            SELECT id
            FROM deposits
            """;

        var rows = await connection.QueryAsync<ListDepositEntity>(sql);

        return rows.Select(r => new ListDepositModel(
            Id: r.Id
        )).ToList();
    }
}
