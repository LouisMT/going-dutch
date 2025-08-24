using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface IListExpensesUseCase
{
    Task<ListExpensesUseCaseResponse> Execute();
}
