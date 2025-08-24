using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateSplitRuleEntryRequest
{
    [Required]
    public long? ContributorId { get; init; }

    [Required]
    public decimal? Share { get; init; }
}
