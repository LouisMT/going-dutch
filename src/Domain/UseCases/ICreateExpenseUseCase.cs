using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateExpenseUseCase
{
    Task<CreateExpenseUseCaseResponse> Execute(CreateExpenseUseCaseRequest request);
}
