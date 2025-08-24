using Dapper;
using Domain.Repositories;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class SplitRuleEntryRepository(
    NpgsqlConnection connection
) : ISplitRuleEntryRepository
{
    public async Task<long> Create(long splitRuleId, long contributorId, decimal share)
    {
        const string sql =
            """
            INSERT INTO split_rule_entries (split_rule_id, contributor_id, share)
            VALUES (@SplitRuleId, @ContributorId, @Share)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            SplitRuleId = splitRuleId,
            ContributorId = contributorId,
            Share = share
        });
    }
}
