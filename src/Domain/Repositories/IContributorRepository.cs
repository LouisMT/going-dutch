using Domain.Models;

namespace Domain.Repositories;

public interface IContributorRepository
{
    Task<long> Create(string name);
    Task<IReadOnlyCollection<Contributor>> List();
}
