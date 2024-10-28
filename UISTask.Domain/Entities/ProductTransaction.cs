using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UISTask.Domain.Entities
{
    public class ProductTransaction
    {
        public Guid ProductId { get; set; }
        public Product? Product { get; set; }

        public Guid TransactionId { get; set; }
        public Transaction? Transaction { get; set; }
        public string Unit { get; set; } = string.Empty;


        public int Quantity { get; set; }
        public decimal TotalPrice { get; set; }
    }
}
