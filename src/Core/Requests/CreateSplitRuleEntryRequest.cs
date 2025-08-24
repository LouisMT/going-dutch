using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateSplitRuleEntryRequest
{
    [Required]
    public long? ContributorId { get; set; }

    [Required]
    public decimal? Share { get; set; }
}