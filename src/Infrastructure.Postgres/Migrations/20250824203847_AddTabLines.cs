using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824203847)]
public class AddTabLines : Migration
{
    public override void Up()
    {
        Create.Table("tab_lines")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("tab_id").AsInt64().NotNullable().ForeignKey("tabs", "id")
            .WithColumn("expense_id").AsInt64().NotNullable().ForeignKey("expenses", "id")
            .WithColumn("expense_name").AsString().NotNullable()
            .WithColumn("expense_amount").AsDecimal().NotNullable()
            .WithColumn("split_rule_id").AsInt64().NotNullable().ForeignKey("split_rules", "id")
            .WithColumn("split_rule_name").AsString().NotNullable()
            .WithColumn("split_rule_share").AsDecimal().NotNullable()
            .WithColumn("contributor_id").AsInt64().NotNullable().ForeignKey("contributors", "id")
            .WithColumn("contributor_name").AsString().NotNullable()
            .WithColumn("bank_account_id").AsInt64().NotNullable().ForeignKey("bank_accounts", "id")
            .WithColumn("bank_account_name").AsString().NotNullable();

        Alter.Table("tabs")
            .AddColumn("closed_at").AsDateTime2().Nullable().WithDefaultValue(null);

        Delete.Column("is_closed")
            .FromTable("tabs");
    }

    public override void Down()
    {
        Alter.Table("tabs")
            .AddColumn("is_close").AsBoolean().NotNullable().WithDefaultValue(false);

        Delete.Column("closed_at")
            .FromTable("tabs");

        Delete.Table("tab_lines");
    }
}
