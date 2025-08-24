using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("deposits")]
public class DepositsController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateDepositResponse>(StatusCodes.Status200OK)]
    [ProducesResponseType<ProblemDetails>(StatusCodes.Status400BadRequest)]
    public async Task<IActionResult> Create(CreateDepositRequest request, ICreateDepositUseCase useCase)
    {
        var useCaseRequest = new CreateDepositUseCaseRequest(
            ContributorId: request.ContributorId!.Value,
            BankAccountId: request.BankAccountId!.Value,
            Amount: request.Amount!.Value
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateDepositResponse(
            Id: useCaseResponse.Id
        ));
    }

    [HttpGet]
    [ProducesResponseType<ListDepositsResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> List(IListDepositsUseCase useCase)
    {
        var useCaseResponse = await useCase.Execute();

        return Ok(new ListDepositsResponse(
            Items: useCaseResponse.Items.Select(i => new ListDepositItemResponse(
                Id: i.Id
            ))
        ));
    }
}
