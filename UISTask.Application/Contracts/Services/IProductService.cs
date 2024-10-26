using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Models.Products;

namespace UISTask.Application.Contracts.Services
{
    public interface IProductService
    {
        Task<Guid> CreateProductAsync(ProductAddDto productAddDto);
        Task<ProductReadDto> GetProductByIdAsync(Guid id);
        Task<(IEnumerable<ProductReadDto> Products, int TotalCount)> GetAllProductsAsync(int pageNumber, int pageSize);
        Task UpdateProductAsync(Guid id, ProductUpdateDto productUpdateDto);
        Task DeleteProductAsync(Guid id);

    }
}
