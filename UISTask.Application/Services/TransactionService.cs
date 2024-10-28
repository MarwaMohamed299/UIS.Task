using UISTask.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;
using UISTask.Application.Contracts.Services;
using UISTask.Application.Models.Transactions;
using UISTask.Application.Contracts.UnitOfWork;
using System.Text.Json;

namespace UISTask.Application.Services
{
    public class TransactionService : ITransactionService
    {
        private readonly IUnitOfWork _unitOfWork;

        public TransactionService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;

        }


        public async Task<(IEnumerable<TransactionReadDto> transactions, int totalCount)> GetAllTransactionsAsync(int pageNumber, int pageSize)
        {
            var (transactions, totalCount) = await _unitOfWork.TransactionRepo.GetAllTransactionsAsync(pageNumber, pageSize);

            var transactionDtos = transactions.Select(t => new TransactionReadDto
            {
                Id = t.Id,
                Date = t.Date,
               // ProductTransactions = t.ProductTransactions.Select(pt => new ProductTransactionDto
                    ProductTransactions = (t.ProductTransactions ?? Enumerable.Empty<ProductTransaction>()).Select(pt => new ProductTransactionDto

                    {
                    ProductId = pt.ProductId,
                    //ProductName = pt.Product?.ProductName ?? string.Empty,
                    Quantity = pt.Quantity,
                    TotalPrice = pt.TotalPrice
                }).ToList()
            }).ToList();
           


            return (transactionDtos, totalCount);
        }

        public async Task<(IEnumerable<TransactionReadDto> transactions, int totalCount)> GetTransactionsByDateAsync(DateTime date, int pageNumber, int pageSize)
        {
            var (transactions, totalCount) = await _unitOfWork.TransactionRepo.GetTransactionsByDateAsync(date, pageNumber, pageSize);

            var transactionDtos = transactions.Select(t => new TransactionReadDto
            {
                Id = t.Id,
                Date = t.Date,
                // ProductTransactions = t.ProductTransactions.Select(pt => new ProductTransactionDto
                ProductTransactions = (t.ProductTransactions ?? Enumerable.Empty<ProductTransaction>()).Select(pt => new ProductTransactionDto
                {
                    ProductId = pt.ProductId,
                   // ProductName = pt.Product?.ProductName ?? string.Empty,
                    Quantity = pt.Quantity,
                    TotalPrice = pt.TotalPrice
                }).ToList()
            }).ToList();

            return (transactionDtos, totalCount);
        }


        public async Task<TransactionAddDto> AddTransactionAsync(TransactionAddDto transactionAddDto)
        {
            var transaction = new Transaction
            {
                Date = transactionAddDto.Date,
                ProductTransactions = new List<ProductTransaction>()
            };

            foreach (var productTransactionDto in transactionAddDto.ProductTransactions)
            {
                var product = await _unitOfWork.ProductRepo.GetProductByIdAsync(productTransactionDto.ProductId);

                if (product == null)
                {
                    throw new KeyNotFoundException($"Product with ID {productTransactionDto.ProductId} not found.");
                }

                if (product.CurrentQuantity < productTransactionDto.Quantity)
                {
                    throw new InvalidOperationException($"Not enough stock for product ID {productTransactionDto.ProductId}.");
                }

                var productTransaction = new ProductTransaction
                {
                    ProductId = product.Id,
                    Quantity = productTransactionDto.Quantity,
                    TotalPrice = productTransactionDto.TotalPrice,
                    Product = product 
                };

                product.CurrentQuantity -= productTransaction.Quantity;
                transaction.ProductTransactions.Add(productTransaction);
            }

            await _unitOfWork.TransactionRepo.AddTransactionAsync(transaction);
            await _unitOfWork.SaveChangesAsync();

            return transactionAddDto;
        }



    }
}
