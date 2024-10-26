using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Domain.Entities;

namespace UISTask.Application.Models.Transactions
{
    public class TransactionUpdateDto
    {
        public DateTime Date { get; set; }

        public ICollection<ProductTransaction>? ProductTransactions { get; set; }
    }
}
