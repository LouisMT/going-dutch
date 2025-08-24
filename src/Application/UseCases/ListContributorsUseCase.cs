using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListContributorsUseCase(
    IContributorRepository contributorRepository
) : IListContributorsUseCase
{
    public async Task<ListContributorsUseCaseResponse> Execute()
    {
        var contributors = await contributorRepository.List();

        return new ListContributorsUseCaseResponse(
            Items: contributors.Select(c => new ListContributorItemUseCaseResponse(
                Id: c.Id,
                Name: c.Name
            )).ToList()
        );
    }
}
