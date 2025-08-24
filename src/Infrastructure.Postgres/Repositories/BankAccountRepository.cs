using Dapper;
using Domain.Repositories;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class BankAccountRepository(
    NpgsqlConnection connection
) : IBankAccountRepository
{
    public async Task<long> Create(string name)
    {
        const string sql = "INSERT INTO bank_accounts (name) VALUES (@name) RETURNING id";

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            Name = name
        });
    }
}
