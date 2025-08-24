using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateContributorUseCase(
    IContributorRepository contributorRepository
) : ICreateContributorUseCase
{
    public async Task<CreateContributorUseCaseResponse> Execute(CreateContributorUseCaseRequest request)
    {
        var id = await contributorRepository.Create(request.Name);

        return new CreateContributorUseCaseResponse(
            Id: id
        );
    }
}
