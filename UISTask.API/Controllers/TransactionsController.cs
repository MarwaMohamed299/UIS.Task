using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using UISTask.Application.Contracts.Services;

namespace UISTask.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController(ITransactionService transactionService) : ControllerBase
    {
        private readonly ITransactionService _transactionService = transactionService;

        [HttpGet]
        public async Task<IActionResult> GetAllTransactions([FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 10)
        {
            var (transactions, totalCount) = await _transactionService.GetAllTransactionsAsync(pageNumber, pageSize);

            var response = new
            {
                TotalCount = totalCount,
                Transactions = transactions
            };

            return Ok(response);
        }


        [HttpGet("by-date")]
        public async Task<IActionResult> GetTransactionsByDate([FromQuery] DateTime date, [FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 10)
        {
  var (transactions, totalCount) = await _transactionService.GetTransactionsByDateAsync(date, pageNumber, pageSize);

            var response = new
            {
                TotalCount = totalCount,
                Transactions = transactions
            };

            return Ok(response);
        }

        [HttpPost]
        public async Task<IActionResult> CreateTransaction([FromBody] Guid productId, int quantity, DateTime date)
        {
            var transaction = await _transactionService.AddTransactionAsync(productId, quantity, date);
            return Ok();
        }
    }
}

