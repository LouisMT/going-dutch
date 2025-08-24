using Application.UseCases;
using Domain.UseCases;
using Microsoft.Extensions.DependencyInjection;

namespace Application.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddTransient<ICreateBankAccountUseCase, CreateBankAccountUseCase>();

        return services;
    }
}