using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateTabRequest
{
    [Required]
    public string? Name { get; init; }
}
