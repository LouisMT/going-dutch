using System.ComponentModel.DataAnnotations;

namespace Domain.Options;

public class PostgresOptions
{
    public const string Name = "Postgres";

    [Required]
    public string? Host { get; init; }

    [Required]
    public string? Username { get; init; }

    [Required]
    public string? Password { get; init; }

    [Required]
    public string? Database { get; init; }
}
