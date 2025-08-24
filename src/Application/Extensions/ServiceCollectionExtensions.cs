using Application.UseCases;
using Domain.UseCases;
using Microsoft.Extensions.DependencyInjection;

namespace Application.Extensions;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddTransient<ICreateBankAccountUseCase, CreateBankAccountUseCase>();
        services.AddTransient<ICreateContributorUseCase, CreateContributorUseCase>();
        services.AddTransient<ICreateDepositUseCase, CreateDepositUseCase>();
        services.AddTransient<ICreateExpenseUseCase, CreateExpenseUseCase>();
        services.AddTransient<ICreateSplitRuleUseCase, CreateSplitRuleUseCase>();
        services.AddTransient<IListBankAccountsUseCase, ListBankAccountsUseCase>();
        services.AddTransient<IListContributorsUseCase, ListContributorsUseCase>();
        services.AddTransient<IListDepositsUseCase, ListDepositsUseCase>();
        services.AddTransient<IListExpensesUseCase, ListExpensesUseCase>();
        services.AddTransient<IListSplitRulesUseCase, ListSplitRulesUseCase>();

        return services;
    }
}
