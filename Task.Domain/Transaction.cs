using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task.Domain
{
    public class Transaction
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; } = string.Empty;
        public int Quantity { get; set; }
        public DateTime Date { get; set; }
        public string Unit { get; set; } = string.Empty;
        public decimal TotalPrice { get; set; }
        public Product Product { get; set; } 
    }
}
