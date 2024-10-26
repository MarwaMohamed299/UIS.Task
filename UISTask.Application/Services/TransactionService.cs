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
                    ProductName = pt.Product?.ProductName ?? string.Empty,
                    Quantity = pt.Quantity,
                    TotalPrice = pt.TotalPrice
                }).ToList()
            }).ToList();
            var jsonOutput = JsonSerializer.Serialize(transactionDtos);
            Console.WriteLine(jsonOutput); // Or use a logger to inspect the output


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
                    ProductName = pt.Product?.ProductName ?? string.Empty,
                    Quantity = pt.Quantity,
                    TotalPrice = pt.TotalPrice
                }).ToList()
            }).ToList();

            return (transactionDtos, totalCount);
        }


        public async Task<TransactionAddDto> AddTransactionAsync(Guid productId, int quantity, DateTime date)
        {
            // Logic to create a transaction and deduct from stock
            var product = await _unitOfWork.ProductRepo.GetProductByIdAsync(productId);

            if (product == null || product.CurrentQuantity < quantity)
            {
                throw new InvalidOperationException("Insufficient stock for the requested quantity.");
            }

            // Create a new transaction
            var transaction = new Transaction
            {
                Date = date,
                ProductTransactions = new List<ProductTransaction>
        {
            new ProductTransaction
            {
                ProductId = productId,
                Quantity = quantity,
                TotalPrice = quantity * product.Price 
            }
        }
            };

            // Deduct quantity from the product stock
            product.CurrentQuantity -= quantity;

            await _unitOfWork.TransactionRepo.AddTransactionAsync(transaction);
            await _unitOfWork.ProductRepo.UpdateProductAsync(product);

            // Map to DTO
            var transactionDto = new TransactionAddDto
            {
                Id = transaction.Id,
                Date = transaction.Date,
                ProductTransactions = transaction.ProductTransactions.Select(pt => new ProductTransactionDto
                {
                    ProductId = pt.ProductId,
                    Quantity = pt.Quantity,
                    TotalPrice = pt.TotalPrice
                }).ToList()
            };

            return transactionDto;
        }

    }
}
