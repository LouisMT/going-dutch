using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824201247)]
public class AddTabs : Migration
{
    public override void Up()
    {
        Create.Table("tabs")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("name").AsString().NotNullable()
            .WithColumn("is_closed").AsBoolean().NotNullable().WithDefaultValue(false);

        Alter.Table("deposits")
            .AddColumn("tab_id").AsInt64().NotNullable().ForeignKey("tabs", "id");
    }

    public override void Down()
    {
        Delete.Column("tab_id")
            .FromTable("deposits");

        Delete.Table("tabs");
    }
}
