using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;
using UISTask.Application.Contracts.UnitOfWork;
using UISTask.Infrastructure.Data.Context;

namespace UISTask.Infrastructure.Data.UnitOfWork
{
    public class UnitOfWork:IUnitOfWork
    {
        private readonly DatabaseContext _context;

        public IProductRepo ProductRepo { get; }
        public ITransactionRepo TransactionRepo { get; }


        public UnitOfWork(
            DatabaseContext databaseContext,
            IProductRepo productRepo,
            ITransactionRepo transactionRepo
        )
        {
            _context = databaseContext;
            ProductRepo = productRepo;
            TransactionRepo = transactionRepo;

        }

        public async Task<int> SaveChangesAsync()
        {
            return await _context.SaveChangesAsync();

        }
    }
}
