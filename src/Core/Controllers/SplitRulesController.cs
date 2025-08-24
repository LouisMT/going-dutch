using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("/split-rules")]
public class SplitRulesController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateSplitRuleResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> Create(CreateSplitRuleRequest request, ICreateSplitRuleUseCase useCase)
    {
        var useCaseRequest = new CreateSplitRuleUseCaseRequest(
            Name: request.Name!,
            Entries: request.Entries!.Select(e => new CreateSplitRuleEntryUseCaseRequest(
                ContributorId: e.ContributorId!.Value,
                Share: e.Share!.Value
            ))
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateSplitRuleResponse(
            Id: useCaseResponse.Id
        ));
    }

    [HttpGet]
    [ProducesResponseType<ListSplitRulesResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> List(IListSplitRulesUseCase useCase)
    {
        var useCaseResponse = await useCase.Execute();

        return Ok(new ListSplitRulesResponse(
            Items: useCaseResponse.Items.Select(i => new ListSplitRuleItemResponse(
                Id: i.Id,
                Name: i.Name
            ))
        ));
    }
}
