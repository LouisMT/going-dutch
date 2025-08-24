using Domain.UseCaseRequests;

namespace Domain.UseCases;

public interface ICloseTabUseCase
{
    Task Execute(CloseTabUseCaseRequest request);
}
