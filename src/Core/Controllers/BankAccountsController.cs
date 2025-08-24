using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("/bank-accounts")]
public class BankAccountsController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateBankAccountResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> Create(CreateBankAccountRequest request, ICreateBankAccountUseCase useCase)
    {
        var useCaseRequest = new CreateBankAccountUseCaseRequest(
            Name: request.Name!
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateBankAccountResponse(
            Id: useCaseResponse.Id
        ));
    }
}
