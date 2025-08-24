using Domain.Options;
using Domain.Repositories;
using FluentMigrator.Runner;
using Infrastructure.Postgres.Repositories;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Npgsql;

namespace Infrastructure.Postgres.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddPostgres(this IServiceCollection services)
    {
        services.AddDataSource();
        services.AddMigrations();
        services.AddRepositories();

        return services;
    }

    private static void AddDataSource(this IServiceCollection services)
    {
        services.AddNpgsqlDataSource(string.Empty, (serviceProvider, builder) =>
        {
            var options = serviceProvider.GetRequiredService<IOptions<PostgresOptions>>();
            builder.ConnectionStringBuilder.ConnectionString = GenerateConnectionString(options);
        });
    }

    private static void AddMigrations(this IServiceCollection services)
    {
        services.AddFluentMigratorCore()
            .ConfigureRunner(builder =>
            {
                builder.AddPostgres()
                    .WithGlobalConnectionString(serviceProvider =>
                    {
                        var postgresOptions = serviceProvider.GetRequiredService<IOptions<PostgresOptions>>();
                        return GenerateConnectionString(postgresOptions);
                    })
                    .ScanIn(typeof(ServiceCollectionExtensions).Assembly).For.All();
            });
    }

    private static void AddRepositories(this IServiceCollection services)
    {
        services.AddScoped<IBankAccountRepository, BankAccountRepository>();
        services.AddScoped<IContributorRepository, ContributorRepository>();
        services.AddScoped<IDepositRepository, DepositRepository>();
        services.AddScoped<IExpenseRepository, ExpenseRepository>();
        services.AddScoped<IMigrationRepository, MigrationRepository>();
        services.AddScoped<ISplitRuleEntryRepository, SplitRuleEntryRepository>();
        services.AddScoped<ISplitRuleRepository, SplitRuleRepository>();
        services.AddScoped<ITabRepository, TabRepository>();
    }

    private static string GenerateConnectionString(IOptions<PostgresOptions> options)
    {
        var connectionStringBuilder = new NpgsqlConnectionStringBuilder
        {
            Host = options.Value.Host,
            Username = options.Value.Username,
            Password = options.Value.Password,
            Database = options.Value.Database
        };

        return connectionStringBuilder.ConnectionString;
    }
}
