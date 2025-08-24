using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class GetTabUseCase(
    ITabRepository tabRepository
) : IGetTabUseCase
{
    public async Task<GetTabUseCaseResponse> Execute(GetTabUseCaseRequest request)
    {
        var tab = await tabRepository.Get(request.Id);

        return new GetTabUseCaseResponse(
            Name: tab.Name,
            ClosedAt: tab.ClosedAt
        );
    }
}
