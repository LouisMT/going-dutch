using Domain.Options;
using Microsoft.Extensions.DependencyInjection;

namespace Domain.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddDomain(this IServiceCollection services)
    {
        services.AddOptions();

        return services;
    }

    private static void AddOptions(this IServiceCollection services)
    {
        services.AddOptions<PostgresOptions>()
            .BindConfiguration(PostgresOptions.Name)
            .ValidateDataAnnotations()
            .ValidateOnStart();

        services.AddOptions<UiOptions>()
            .BindConfiguration(UiOptions.Name)
            .ValidateDataAnnotations()
            .ValidateOnStart();
    }
}
