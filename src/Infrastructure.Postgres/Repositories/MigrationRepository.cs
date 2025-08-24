using Domain.Repositories;
using FluentMigrator.Runner;

namespace Infrastructure.Postgres.Repositories;

public class MigrationRepository(
    IMigrationRunner migrationRunner
) : IMigrationRepository
{
    public void Migrate()
    {
        migrationRunner.MigrateUp();
    }
}
