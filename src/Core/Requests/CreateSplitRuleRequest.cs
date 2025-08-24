using System.ComponentModel.DataAnnotations;
using Microsoft.Extensions.Options;

namespace Core.Requests;

public class CreateSplitRuleRequest
{
    [Required]
    public string? Name { get; init; }

    [Required]
    [ValidateEnumeratedItems]
    public IReadOnlyCollection<CreateSplitRuleEntryRequest>? Entries { get; init; }
}
