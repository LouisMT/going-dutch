using Application.Extensions;
using Domain.Extensions;
using Domain.Options;
using Domain.Repositories;
using Infrastructure.Postgres.Extensions;
using Microsoft.AspNetCore.Cors.Infrastructure;
using Microsoft.Extensions.Options;
using Scalar.AspNetCore;

namespace Core;

public static class Program
{
    public static async Task Main(string[] args)
    {
        var builder = WebApplication.CreateSlimBuilder(args);
        builder.Services.ConfigureServices();

        var app = builder.Build();
        app.ConfigureApplication();

        MigrateDatabase(app.Services);

        await app.RunAsync();
    }

    private static void ConfigureServices(this IServiceCollection services)
    {
        services.AddCors();
        services.AddOptions<CorsOptions>()
            .Configure<IOptions<UiOptions>>((a, b) =>
            {
                a.AddDefaultPolicy(p => p
                    .WithOrigins(b.Value.Origin!)
                    .AllowAnyMethod()
                );
            });

        services.AddControllers();
        services.AddOpenApi();

        services.AddDomain();
        services.AddPostgres();
        services.AddApplication();
    }

    private static void ConfigureApplication(this WebApplication app)
    {
        app.UseCors();
        app.MapControllers();

        if (!app.Environment.IsDevelopment())
        {
            return;
        }

        app.MapOpenApi();
        app.MapScalarApiReference();
    }

    private static void MigrateDatabase(IServiceProvider serviceProvider)
    {
        using var serviceScope = serviceProvider.CreateScope();
        var migrationRepository = serviceScope.ServiceProvider.GetRequiredService<IMigrationRepository>();
        migrationRepository.Migrate();
    }
}
