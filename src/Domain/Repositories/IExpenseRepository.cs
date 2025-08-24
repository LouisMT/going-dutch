using Domain.Models;

namespace Domain.Repositories;

public interface IExpenseRepository
{
    Task<long> Create(long splitRuleId, long bankAccountId, string name, string description, decimal amount);
    Task<IReadOnlyCollection<ListExpenseModel>> List();
}
