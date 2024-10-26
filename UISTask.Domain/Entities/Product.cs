using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UISTask.Domain.Entities
{
    public class Product
    {
        public Guid Id { get; set; }
        public string ProductName { get; set; } = string.Empty;
        public string Unit { get; set; } = string.Empty;
        public decimal Price { get; set; }
        public int InitialQuantity { get; set; }
        public int CurrentQuantity { get; set; }

        // Navigation property for the many-to-many relationship
        public ICollection<ProductTransaction>? ProductTransaction { get; set; } = new List<ProductTransaction>();
    }
}
