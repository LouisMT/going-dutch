using Domain.Models;

namespace Domain.Repositories;

public interface ISplitRuleRepository
{
    Task<long> Create(string name);
    Task<IReadOnlyCollection<SplitRule>> List();
}
