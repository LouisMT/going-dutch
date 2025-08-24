namespace Domain.Repositories;

public interface IBankAccountRepository
{
    Task Create(string name);
}
