using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("tabs")]
public class TabsController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateTabResponse>(StatusCodes.Status200OK)]
    [ProducesResponseType<ProblemDetails>(StatusCodes.Status400BadRequest)]
    public async Task<IActionResult> Create(CreateTabRequest request, ICreateTabUseCase useCase)
    {
        var useCaseRequest = new CreateTabUseCaseRequest(
            Name: request.Name!
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateTabResponse(
            Id: useCaseResponse.Id
        ));
    }

    [HttpGet]
    [ProducesResponseType<ListTabsResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> List(IListTabsUseCase useCase)
    {
        var useCaseResponse = await useCase.Execute();

        return Ok(new ListTabsResponse(
            Items: useCaseResponse.Items.Select(i => new ListTabItemResponse(
                Id: i.Id,
                Name: i.Name
            ))
        ));
    }

    [HttpGet("{id:long}")]
    [ProducesResponseType<GetTabResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> Get(long id, IGetTabUseCase useCase)
    {
        var useCaseRequest = new GetTabUseCaseRequest(
            Id: id
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new GetTabResponse(
            Name: useCaseResponse.Name,
            ClosedAt: useCaseResponse.ClosedAt
        ));
    }
}
