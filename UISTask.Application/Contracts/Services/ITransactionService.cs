using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Models.Transactions;
using UISTask.Domain.Entities;

namespace UISTask.Application.Contracts.Services
{
    public interface ITransactionService
    {
        Task<(IEnumerable<TransactionReadDto> transactions, int totalCount)> GetAllTransactionsAsync(int pageNumber, int pageSize);
        Task<(IEnumerable<TransactionReadDto> transactions, int totalCount)> GetTransactionsByDateAsync(DateTime date, int pageNumber, int pageSize);
        Task<TransactionAddDto> AddTransactionAsync(TransactionAddDto transactionAddDto);
    }
}
