using System.Transactions;
using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateSplitRuleUseCase(
    ISplitRuleRepository splitRuleRepository,
    ISplitRuleEntryRepository splitRuleEntryRepository
) : ICreateSplitRuleUseCase
{
    public async Task<CreateSplitRuleUseCaseResponse> Execute(CreateSplitRuleUseCaseRequest request)
    {
        using var transaction = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled);

        var splitRuleId = await splitRuleRepository.Create(request.Name);

        foreach (var entry in request.Entries)
        {
            await splitRuleEntryRepository.Create(splitRuleId, entry.ContributorId, entry.Share);
        }

        transaction.Complete();

        return new CreateSplitRuleUseCaseResponse(
            Id: splitRuleId
        );
    }
}
