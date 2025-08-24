using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListDepositsUseCase
{
    Task<ListDepositsUseCaseResponse> Execute();
}
