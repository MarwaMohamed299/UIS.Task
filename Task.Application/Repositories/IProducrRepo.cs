using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Task.Domain;

namespace Task.Application.Repositories
{
    public interface IProducrRepo
    {
        Task AddProductAsync(Product product);
        Task<Product> GetProductByIdAsync(Guid id);
        Task<IEnumerable<Product>> GetAllProductsAsync();
    }
}
