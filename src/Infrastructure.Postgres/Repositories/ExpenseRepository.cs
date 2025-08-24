using Dapper;
using Domain.Models;
using Domain.Repositories;
using Infrastructure.Postgres.Entities;
using Npgsql;

namespace Infrastructure.Postgres.Repositories;

public class ExpenseRepository(
    NpgsqlConnection connection
) : IExpenseRepository
{
    public async Task<long> Create(long splitRuleId, long bankAccountId, string name, string description, decimal amount)
    {
        const string sql =
            """
            INSERT INTO expenses (split_rule_id, bank_account_id, name, description, amount)
            VALUES (@SplitRuleId, @BankAccountId, @Name, @Description, @Amount)
            RETURNING id
            """;

        return await connection.ExecuteScalarAsync<long>(sql, new
        {
            SplitRuleId = splitRuleId,
            BankAccountId = bankAccountId,
            Name = name,
            Description = description,
            Amount = amount
        });
    }

    public async Task<IReadOnlyCollection<ListExpenseModel>> List()
    {
        const string sql =
            """
            SELECT id, name
            FROM expenses
            """;

        var rows = await connection.QueryAsync<ListExpenseEntity>(sql);

        return rows.Select(r => new ListExpenseModel(
            Id: r.Id,
            Name: r.Name
        )).ToList();
    }
}
