using System.ComponentModel.DataAnnotations;

namespace Core.Requests;

public class CreateBankAccountRequest
{
    [Required]
    public string? Name { get; init; }
}
