using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824180645)]
public class AddExpenses : Migration
{
    public override void Up()
    {
        Create.Table("expenses")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("split_rule_id").AsInt64().NotNullable().ForeignKey("split_rules", "id")
            .WithColumn("bank_account_id").AsInt64().NotNullable().ForeignKey("bank_accounts", "id")
            .WithColumn("name").AsString().NotNullable()
            .WithColumn("description").AsString().NotNullable()
            .WithColumn("amount").AsDecimal().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("expenses");
    }
}
