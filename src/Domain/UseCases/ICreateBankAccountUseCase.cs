using Domain.UseCaseRequests;
using Domain.UseCaseResponses;

namespace Domain.UseCases;

public interface ICreateBankAccountUseCase
{
    Task<CreateBankAccountUseCaseResponse> Execute(CreateBankAccountUseCaseRequest request);
}
