using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListBankAccountsUseCase(
    IBankAccountRepository bankAccountRepository
) : IListBankAccountsUseCase
{
    public async Task<ListBankAccountsUseCaseResponse> Execute()
    {
        var bankAccounts = await bankAccountRepository.List();

        return new ListBankAccountsUseCaseResponse(
            Items: bankAccounts.Select(b => new ListBankAccountItemUseCaseResponse(
                Id: b.Id,
                Name: b.Name
            )).ToList()
        );
    }
}
