using Dapper;
using Domain.Repositories;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class TabLineRepository(
    NpgsqlConnection connection
) : ITabLineRepository
{
    public async Task SnapshotForTab(long tabId)
    {
        const string sql =
            """
            INSERT INTO tab_lines (
                tab_id,
                expense_id,
                expense_name,
                expense_amount,
                split_rule_id,
                split_rule_name,
                split_rule_share,
                contributor_id,
                contributor_name,
                bank_account_id,
                bank_account_name
            )
            SELECT
                @TabId,
                e.id,
                e.name,
                e.amount,
                sr.id,
                sr.name,
                sre.share,
                c.id,
                c.name,
                b.id,
                b.name
            FROM expenses e
            LEFT JOIN bank_accounts b ON b.id = e.bank_account_id
            LEFT JOIN split_rules sr ON sr.id = e.split_rule_id
            LEFT JOIN split_rule_entries sre ON sre.split_rule_id = sr.id
            LEFT JOIN contributors c ON c.id = sre.contributor_id
            """;

        await connection.ExecuteAsync(sql, new
        {
            TabId = tabId
        });
    }
}
