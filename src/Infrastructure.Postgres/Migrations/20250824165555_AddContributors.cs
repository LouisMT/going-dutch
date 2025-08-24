using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824165555)]
public class AddContributors : Migration
{
    public override void Up()
    {
        Create.Table("contributors")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("name").AsString().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("contributors");
    }
}
