using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class TabRepository(
    NpgsqlConnection connection
) : ITabRepository
{
    public async Task<long> Create(string name)
    {
        const string sql =
            """
            INSERT INTO tabs (name)
            VALUES (@Name)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            Name = name
        });
    }

    public async Task<IReadOnlyCollection<Tab>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM tabs
            """;

        var rows = await connection.QueryAsync<ListTabEntity>(sql);

        return rows.Select(r => new Tab(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }
}
