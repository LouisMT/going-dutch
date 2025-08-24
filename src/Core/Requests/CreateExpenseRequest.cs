using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateExpenseRequest
{
    [Required]
    public long? SplitRuleId { get; set; }

    [Required]
    public long? BankAccountId { get; set; }

    [Required]
    public string? Name { get; set; }

    [Required]
    public string? Description { get; set; }

    [Required]
    public decimal? Amount { get; set; }
}
