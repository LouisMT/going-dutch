using Domain.Options;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;

namespace Infrastructure.Postgres.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddPostgres(this IServiceCollection services)
    {
        services.AddNpgsqlDataSource(string.Empty, (serviceProvider, builder) =>
        {
            var options = serviceProvider.GetRequiredService<IOptions<PostgresOptions>>();

            builder.ConnectionStringBuilder.Host = options.Value.Host;
            builder.ConnectionStringBuilder.Username = options.Value.Username;
            builder.ConnectionStringBuilder.Password = options.Value.Password;
            builder.ConnectionStringBuilder.Database = options.Value.Database;
        });

        return services;
    }
}