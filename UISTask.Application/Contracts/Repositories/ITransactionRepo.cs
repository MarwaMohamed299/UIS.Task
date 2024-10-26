using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Domain.Entities;

namespace UISTask.Application.Contracts.Repositories
{
    public interface ITransactionRepo
    {
        Task AddTransactionAsync(Transaction transaction);
        Task<(IEnumerable<Transaction> Transactions, int TotalCount)> GetAllTransactionsAsync(int pageNumber, int pageSize);
        Task<(IEnumerable<Transaction> Transactions, int TotalCount)> GetTransactionsByDateAsync(DateTime date, int pageNumber, int pageSize);
    }
}
