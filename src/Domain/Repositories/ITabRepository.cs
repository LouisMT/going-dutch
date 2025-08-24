using Domain.Models;

namespace Domain.Repositories;

public interface ITabRepository
{
    Task<long> Create(string name);
    Task<IReadOnlyCollection<ListTabModel>> List();
    Task<GetTabModel> Get(long id);
    Task Close(long id);
}
