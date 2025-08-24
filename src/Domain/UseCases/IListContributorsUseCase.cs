using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListContributorsUseCase
{
    Task<ListContributorsUseCaseResponse> Execute();
}
