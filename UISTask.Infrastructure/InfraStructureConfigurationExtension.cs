using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Repositories;
using UISTask.Application.Contracts.UnitOfWork;
using UISTask.Infrastructure.Data.Repositories;
using UISTask.Infrastructure.Data.UnitOfWork;

namespace UISTask.Infrastructure
{
    public static class InfraStructureConfigurationExtension
    {
        public static IServiceCollection AddInfraStructureConfiguration(
            this IServiceCollection services,
            IConfiguration configuration
            )
        {
            services.AddScoped<IUnitOfWork, UnitOfWork>();

            services.AddScoped<IProductRepo, ProductRepository>();
             services.AddScoped<ITransactionRepo, TransactionRepo>();
            return services;
        }
    }
}
