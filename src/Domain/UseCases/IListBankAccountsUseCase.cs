using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListBankAccountsUseCase
{
    Task<ListBankAccountsUseCaseResponse> Execute();
}
