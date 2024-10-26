using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;

namespace UISTask.Application.Contracts.UnitOfWork
{
    public interface IUnitOfWork
    {
        public IProductRepo ProductRepo { get; }
        public ITransactionRepo TransactionRepo { get; }
         Task<int> SaveChangesAsync();

    }
}
