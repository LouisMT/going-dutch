using Domain.Repositories;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class ListDepositsUseCase(
    IDepositRepository depositRepository
) : IListDepositsUseCase
{
    public async Task<ListDepositsUseCaseResponse> Execute()
    {
        var deposits = await depositRepository.List();

        return new ListDepositsUseCaseResponse(
            Items: deposits.Select(d => new ListDepositItemUseCaseResponse(
                Id: d.Id
            )).ToList()
        );
    }
}
