using Domain.Models;

namespace Domain.Repositories;

public interface IDepositRepository
{
    Task<long> Create(long contributorId, long bankAccountId, decimal amount);
    Task<IReadOnlyCollection<Deposit>> List();
}
