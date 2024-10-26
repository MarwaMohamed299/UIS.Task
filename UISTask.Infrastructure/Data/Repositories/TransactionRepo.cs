using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;
using UISTask.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using UISTask.Infrastructure.Data.Context;

namespace UISTask.Infrastructure.Data.Repositories
{
    public class TransactionRepo : ITransactionRepo
    {
        private readonly DatabaseContext _context;

        public TransactionRepo(DatabaseContext context)
        {
            _context = context;
        }

        public async Task<(IEnumerable<Transaction> Transactions, int TotalCount)> GetAllTransactionsAsync(int pageNumber, int pageSize)
        {
            var totalCount = await _context.Transactions.CountAsync();
            var transactions = await _context.Transactions
                .Include(t => t.ProductTransactions!) 
                .ThenInclude(pt => pt.Product) 
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            return (transactions, totalCount);
        }

        public async Task AddTransactionAsync(Transaction transaction)
        {
            await _context.Transactions.AddAsync(transaction);
            await _context.SaveChangesAsync();
        }

        public async Task<(IEnumerable<Transaction> Transactions, int TotalCount)> GetTransactionsByDateAsync(DateTime date, int pageNumber, int pageSize)
        {
            var query = _context.Transactions
                .Where(t => t.Date.Date == date.Date); 

            var totalCount = await query.CountAsync();
            var transactions = await query
                .Include(t => t.ProductTransactions!)
                .ThenInclude(pt => pt.Product)
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            return (transactions, totalCount);
        }

    }
}
