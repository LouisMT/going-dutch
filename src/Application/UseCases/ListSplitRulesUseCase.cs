using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListSplitRulesUseCase(
    ISplitRuleRepository splitRuleRepository
) : IListSplitRulesUseCase
{
    public async Task<ListSplitRulesUseCaseResponse> Execute()
    {
        var splitRules = await splitRuleRepository.List();

        return new ListSplitRulesUseCaseResponse(
            Items: splitRules.Select(s => new ListSplitRuleItemUseCaseResponse(
                Id: s.Id,
                Name: s.Name
            )).ToList()
        );
    }
}
