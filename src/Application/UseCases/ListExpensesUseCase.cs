using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListExpensesUseCase(
    IExpenseRepository expenseRepository
) : IListExpensesUseCase
{
    public async Task<ListExpensesUseCaseResponse> Execute()
    {
        var expenses = await expenseRepository.List();

        return new ListExpensesUseCaseResponse(
            Items: expenses.Select(e => new ListExpenseItemUseCaseResponse(
                Id: e.Id,
                Name: e.Name
            )).ToList()
        );
    }
}
