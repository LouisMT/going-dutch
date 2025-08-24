using FluentMigrator;

namespace Infrastructure.Postgres.Migrations;

[Migration(20250824172959)]
public class AddSplitRules : Migration
{
    public override void Up()
    {
        Create.Table("split_rules")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("name").AsString().NotNullable();

        Create.Table("split_rule_entries")
            .WithColumn("id").AsInt64().PrimaryKey().Identity()
            .WithColumn("split_rule_id").AsInt64().NotNullable().ForeignKey("split_rules", "id")
            .WithColumn("contributor_id").AsInt64().NotNullable().ForeignKey("contributors", "id")
            .WithColumn("share").AsDecimal().NotNullable();
    }

    public override void Down()
    {
        Delete.Table("split_rule_entries");
        Delete.Table("split_rules");
    }
}
