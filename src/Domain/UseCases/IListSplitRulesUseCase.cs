using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListSplitRulesUseCase
{
    Task<ListSplitRulesUseCaseResponse> Execute();
}
