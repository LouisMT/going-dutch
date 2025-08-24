using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class BankAccountRepository(
    NpgsqlConnection connection
) : IBankAccountRepository
{
    public async Task<long> Create(string name)
    {
        const string sql =
            """
            INSERT INTO bank_accounts (name)
            VALUES (@Name)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            Name = name
        });
    }

    public async Task<IReadOnlyCollection<BankAccount>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM bank_accounts
            """;

        var rows = await connection.QueryAsync<BankAccountEntity>(sql);

        return rows.Select(r => new BankAccount(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }
}
