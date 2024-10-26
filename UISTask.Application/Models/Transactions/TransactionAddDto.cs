using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UISTask.Application.Models.Transactions
{
    public class TransactionAddDto
    {
        public Guid Id { get; set; }
        public DateTime Date { get; set; }
        public List<ProductTransactionDto> ProductTransactions { get; set; } = new List<ProductTransactionDto>();
    }
}
