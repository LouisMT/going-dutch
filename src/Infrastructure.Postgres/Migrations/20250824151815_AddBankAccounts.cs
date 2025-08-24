using FluentMigrator;
using FluentMigrator.Postgres;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824151815)]
public class AddBankAccounts : Migration
{
    public override void Up()
    {
        Create.Table("BankAccounts")
            .WithColumn("Id").AsInt64().PrimaryKey().Identity()
            .WithColumn("Name").AsString().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("BankAccounts");
    }
}
