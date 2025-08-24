using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateExpenseRequest
{
    [Required]
    public long? SplitRuleId { get; init; }

    [Required]
    public long? BankAccountId { get; init; }

    [Required]
    public string? Name { get; init; }

    [Required]
    public string? Description { get; init; }

    [Required]
    public decimal? Amount { get; init; }
}
