using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListTabsUseCase(
    ITabRepository tabRepository
) : IListTabsUseCase
{
    public async Task<ListTabsUseCaseResponse> Execute()
    {
        var tabs = await tabRepository.List();

        return new ListTabsUseCaseResponse(
            Items: tabs.Select(t => new ListTabItemUseCaseResponse(
                Id: t.Id,
                Name: t.Name
            )).ToList()
        );
    }
}
