using Dapper;
using Domain.Repositories;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class BankAccountRepository(
    NpgsqlConnection connection
) : IBankAccountRepository
{
    public async Task Create(string name)
    {
        const string sql = "INSERT INTO BankAccounts (Name) VALUES (@Name)";

        await connection.ExecuteAsync(sql, new
        {
            Name = name
        });
    }
}
