using Domain.Options;
using FluentMigrator.Runner;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Npgsql;

namespace Infrastructure.Postgres.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddPostgres(this IServiceCollection services)
    {
        services.AddNpgsqlDataSource(string.Empty, (serviceProvider, builder) =>
        {
            var options = serviceProvider.GetRequiredService<IOptions<PostgresOptions>>();
            builder.ConnectionStringBuilder.ConnectionString = GenerateConnectionString(options);
        });

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

        return services;
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
