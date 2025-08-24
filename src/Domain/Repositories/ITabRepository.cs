using Domain.Models;

namespace Domain.Repositories;

public interface ITabRepository
{
    Task<long> Create(string name);
    Task<IReadOnlyCollection<Tab>> List();
}
