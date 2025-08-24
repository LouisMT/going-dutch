using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers;

[ApiController]
public class BankAccountsController : ControllerBase
{
    [HttpGet("/")]
    public IActionResult GetBankAccounts()
    {
        // Logic to retrieve bank accounts
        return Ok(new List<string> { "Account1", "Account2" });
    }
}
