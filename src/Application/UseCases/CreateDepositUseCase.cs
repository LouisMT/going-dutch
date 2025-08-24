using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateDepositUseCase(
    IDepositRepository depositRepository
) : ICreateDepositUseCase
{
    public async Task<CreateDepositUseCaseResponse> Execute(CreateDepositUseCaseRequest request)
    {
        var id = await depositRepository.Create(request.ContributorId, request.BankAccountId, request.Amount);

        return new CreateDepositUseCaseResponse(
            Id: id
        );
    }
}
