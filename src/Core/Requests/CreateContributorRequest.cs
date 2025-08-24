using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateContributorRequest
{
    [Required]
    public string? Name { get; init; }
}