using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IGetTabUseCase
{
    Task<GetTabUseCaseResponse> Execute(GetTabUseCaseRequest request);
}
