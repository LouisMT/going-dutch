using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateExpenseUseCase(
    IExpenseRepository expenseRepository
) : ICreateExpenseUseCase
{
    public async Task<CreateExpenseUseCaseResponse> Execute(CreateExpenseUseCaseRequest request)
    {
        var id = await expenseRepository.Create(request.SplitRuleId, request.BankAccountId, request.Name, request.Description, request.Amount);

        return new CreateExpenseUseCaseResponse(
            Id: id
        );
    }
}
