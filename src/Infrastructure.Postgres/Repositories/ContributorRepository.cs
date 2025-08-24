using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class ContributorRepository(
    NpgsqlConnection connection
) : IContributorRepository
{
    public async Task<long> Create(string name)
    {
        const string sql =
            """
            INSERT INTO contributors (name)
            VALUES (@Name)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            Name = name
        });
    }

    public async Task<IReadOnlyCollection<Contributor>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM contributors
            """;

        var rows = await connection.QueryAsync<ContributorEntity>(sql);

        return rows.Select(r => new Contributor(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }
}
