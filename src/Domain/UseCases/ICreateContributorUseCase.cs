using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateContributorUseCase
{
    Task<CreateContributorUseCaseResponse> Execute(CreateContributorUseCaseRequest request);
}
