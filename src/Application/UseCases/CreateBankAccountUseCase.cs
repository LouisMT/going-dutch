using Domain.Repositories;
using Domain.UseCaseRequests;
using Domain.UseCaseResponses;
using Domain.UseCases;

namespace Application.UseCases;

public class CreateBankAccountUseCase(
    IBankAccountRepository bankAccountRepository
) : ICreateBankAccountUseCase
{
    public async Task<CreateBankAccountUseCaseResponse> Execute(CreateBankAccountUseCaseRequest request)
    {
        var id = await bankAccountRepository.Create(request.Name);

        return new CreateBankAccountUseCaseResponse(
            Id: id
        );
    }
}
