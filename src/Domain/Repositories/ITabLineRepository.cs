namespace Domain.Repositories;

public interface ITabLineRepository
{
    Task SnapshotForTab(long tabId);
}
