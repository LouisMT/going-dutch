using FluentMigrator;
using FluentMigrator.Postgres;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824151815)]
public class AddBankAccounts : Migration
{
    public override void Up()
    {
        Create.Table("bank_accounts")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("name").AsString().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("bank_accounts");
    }
}
