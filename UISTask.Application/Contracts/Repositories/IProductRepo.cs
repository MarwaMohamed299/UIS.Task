using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Domain.Entities;

namespace UISTask.Application.Contracts.Repositories
{
    public interface IProductRepo
    {
        Task AddProductAsync(Product product);
        Task<Product> GetProductByIdAsync(Guid id);
        Task<(List<Product> Products, int TotalCount)> GetAllProductsAsync(int pageNumber, int pageSize);
        Task UpdateProductAsync(Product product);
        Task DeleteProductAsync(Guid productId);
    }
}
