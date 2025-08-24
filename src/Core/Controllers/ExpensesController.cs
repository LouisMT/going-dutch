using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("expenses")]
public class ExpensesController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateExpenseResponse>(StatusCodes.Status200OK)]
    [ProducesResponseType<ProblemDetails>(StatusCodes.Status400BadRequest)]
    public async Task<IActionResult> Create(CreateExpenseRequest request, ICreateExpenseUseCase useCase)
    {
        var useCaseRequest = new CreateExpenseUseCaseRequest(
            SplitRuleId: request.SplitRuleId!.Value,
            BankAccountId: request.BankAccountId!.Value,
            Name: request.Name!,
            Description: request.Description!,
            Amount: request.Amount!.Value
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateExpenseResponse(
            Id: useCaseResponse.Id
        ));
    }

    [HttpGet]
    [ProducesResponseType<ListExpensesResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> List(IListExpensesUseCase useCase)
    {
        var useCaseResponse = await useCase.Execute();

        return Ok(new ListExpensesResponse(
            Items: useCaseResponse.Items.Select(i => new ListExpenseItemResponse(
                Id: i.Id,
                Name: i.Name
            ))
        ));
    }
}
