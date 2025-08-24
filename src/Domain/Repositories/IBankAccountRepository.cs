using Domain.Models;

namespace Domain.Repositories;

public interface IBankAccountRepository
{
    Task<long> Create(string name);
    Task<IReadOnlyCollection<ListBankAccountModel>> List();
}
