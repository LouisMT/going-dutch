using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class SplitRuleRepository(
    NpgsqlConnection connection
) : ISplitRuleRepository
{
    public async Task<long> Create(string name)
    {
        const string sql =
            """
            INSERT INTO split_rules (name)
            VALUES (@Name)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            Name = name
        });
    }

    public async Task<IReadOnlyCollection<SplitRule>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM split_rules
            """;

        var rows = await connection.QueryAsync<ListSplitRuleEntity>(sql);

        return rows.Select(r => new SplitRule(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }
}
