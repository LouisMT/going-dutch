using System.Transactions;
using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCases;

namespace Application.UseCases;

public class CloseTabUseCase(
    ITabRepository tabRepository,
    ITabLineRepository tabLineRepository
) : ICloseTabUseCase
{
    public async Task Execute(CloseTabUseCaseRequest request)
    {
        using var transaction = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled);

        var tab = await tabRepository.Get(request.Id);

        if (tab.ClosedAt.HasValue)
        {
            throw new InvalidOperationException("Tab already closed");
        }

        await tabRepository.Close(request.Id);
        await tabLineRepository.SnapshotForTab(request.Id);

        transaction.Complete();
    }
}