using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateTabUseCase
{
    Task<CreateTabUseCaseResponse> Execute(CreateTabUseCaseRequest request);
}
