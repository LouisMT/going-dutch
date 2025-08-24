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

    public async Task<IReadOnlyCollection<ListTabModel>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM tabs
            """;

        var rows = await connection.QueryAsync<ListTabEntity>(sql);

        return rows.Select(r => new ListTabModel(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }

    public async Task<GetTabModel> Get(long id)
    {
        const string sql =
            """
            SELECT name, closed_at
            FROM tabs
            WHERE id = @Id
            """;

        var row = await connection.QuerySingleAsync<GetTabEntity>(sql, new
        {
            Id = id
        });

        return new GetTabModel(
            Name: row.Name,
            ClosedAt: row.ClosedAt
        );
    }

    public async Task Close(long id)
    {
        const string sql =
            """
            UPDATE tabs
            SET closed_at = CURRENT_TIMESTAMP
            WHERE id = @Id
            """;

        await connection.ExecuteAsync(sql, new
        {
            Id = id
        });
    }
}
