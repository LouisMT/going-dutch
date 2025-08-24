using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListTabsUseCase
{
    Task<ListTabsUseCaseResponse> Execute();
}
