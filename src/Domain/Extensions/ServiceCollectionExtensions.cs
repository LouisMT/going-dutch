using Domain.Options;
using Microsoft.Extensions.DependencyInjection;

namespace Domain.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddDomain(this IServiceCollection services)
    {
        AddOptions(services);
        
        return services;
    }

    private static IServiceCollection AddOptions(IServiceCollection services)
    {
        services.AddOptions<PostgresOptions>()
            .BindConfiguration(PostgresOptions.Name)
            .ValidateDataAnnotations()
            .ValidateOnStart();

        return services;
    }
}
