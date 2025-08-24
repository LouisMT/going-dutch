using Core.Requests;
using Core.Responses;
using Domain.UseCaseRequests;
using Domain.UseCases;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
[Route("/contributors")]
public class ContributorsController : ControllerBase
{
    [HttpPost]
    [ProducesResponseType<CreateContributorResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> Create(CreateContributorRequest request, ICreateContributorUseCase useCase)
    {
        var useCaseRequest = new CreateContributorUseCaseRequest(
            Name: request.Name!
        );

        var useCaseResponse = await useCase.Execute(useCaseRequest);

        return Ok(new CreateContributorResponse(
            Id: useCaseResponse.Id
        ));
    }

    [HttpGet]
    [ProducesResponseType<ListContributorsResponse>(StatusCodes.Status200OK)]
    public async Task<IActionResult> List(IListContributorsUseCase useCase)
    {
        var useCaseResponse = await useCase.Execute();

        return Ok(new ListContributorsResponse(
            Items: useCaseResponse.Items.Select(i => new ListContributorItemResponse(
                Id: i.Id,
                Name: i.Name
            ))
        ));
    }
}