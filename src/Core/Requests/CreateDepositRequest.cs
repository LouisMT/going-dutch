using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateDepositRequest
{
    [Required]
    public long? ContributorId { get; init; }

    [Required]
    public long? BankAccountId { get; init; }

    [Required]
    public decimal? Amount { get; init; }
}
