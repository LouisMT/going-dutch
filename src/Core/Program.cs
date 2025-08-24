using Application.Extensions;
using Domain.Extensions;
using Domain.Repositories;
using Infrastructure.Postgres.Extensions;
using Scalar.AspNetCore;

namespace Core;

public static class Program
{
    public static async Task Main(string[] args)
    {
        var builder = WebApplication.CreateSlimBuilder(args);

        builder.Services.AddControllers();
        builder.Services.AddOpenApi();

        builder.Services.AddDomain();
        builder.Services.AddPostgres();
        builder.Services.AddApplication();

        var app = builder.Build();

        app.MapControllers();

        if (app.Environment.IsDevelopment())
        {
            app.MapOpenApi();
            app.MapScalarApiReference();
        }

        using var serviceScope = app.Services.CreateScope();
        var migrationRepository = serviceScope.ServiceProvider.GetRequiredService<IMigrationRepository>();
        migrationRepository.Migrate();

        await app.RunAsync();
    }
}
