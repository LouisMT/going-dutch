namespace Domain.Repositories;

public interface ISplitRuleEntryRepository
{
    Task<long> Create(long splitRuleId, long contributorId, decimal share);
}
