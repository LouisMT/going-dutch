using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateTabUseCase(
    ITabRepository tabRepository
) : ICreateTabUseCase
{
    public async Task<CreateTabUseCaseResponse> Execute(CreateTabUseCaseRequest request)
    {
        var id = await tabRepository.Create(request.Name);

        return new CreateTabUseCaseResponse(
            Id: id
        );
    }
}
