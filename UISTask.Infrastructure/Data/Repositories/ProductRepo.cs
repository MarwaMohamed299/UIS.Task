using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;
using UISTask.Domain.Entities;
using UISTask.Infrastructure.Data.Context;

namespace UISTask.Infrastructure.Data.Repositories
{
    public class ProductRepository : IProductRepo
    {
        private readonly DatabaseContext _context;

        public ProductRepository(DatabaseContext context)
        {
            _context = context;
        }

        public async Task AddProductAsync(Product product)
        {
            _context.Products.Add(product);
            await _context.SaveChangesAsync();
        }
        public async Task<Product> GetProductByIdAsync(Guid id)
        {
            var product = await _context.Products.FindAsync(id);
            return product!= null ? product : throw new KeyNotFoundException($"Product with ID {id} not found.");
        }

        public async Task<(List<Product> Products, int TotalCount)> GetAllProductsAsync(int pageNumber, int pageSize)
        {
            var totalCount = await _context.Products.CountAsync(); 

            var products = await _context.Products
                .Skip((pageNumber - 1) * pageSize) 
                .Take(pageSize) 
                .ToListAsync();

            return (products, totalCount); 
        }

        public async Task UpdateProductAsync(Product product)
        {
            _context.Products.Update(product);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteProductAsync(Guid productId)
        {
            var product = await GetProductByIdAsync(productId);
            if (product != null)
            {
                _context.Products.Remove(product);
                await _context.SaveChangesAsync();
            }
        }
    }

}
