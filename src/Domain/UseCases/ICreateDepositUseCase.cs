using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateDepositUseCase
{
    Task<CreateDepositUseCaseResponse> Execute(CreateDepositUseCaseRequest request);
}
