using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateSplitRuleUseCase
{
    Task<CreateSplitRuleUseCaseResponse> Execute(CreateSplitRuleUseCaseRequest request);
}
