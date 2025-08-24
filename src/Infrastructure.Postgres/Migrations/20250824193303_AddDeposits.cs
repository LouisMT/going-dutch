using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824193303)]
public class AddDeposits : Migration
{
    public override void Up()
    {
        Create.Table("deposits")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("contributor_id").AsInt64().NotNullable().ForeignKey("contributors", "id")
            .WithColumn("bank_account_id").AsInt64().NotNullable().ForeignKey("bank_accounts", "id")
            .WithColumn("amount").AsDecimal().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("deposits");
    }
}