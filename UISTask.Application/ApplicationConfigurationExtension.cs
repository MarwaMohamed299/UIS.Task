using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UISTask.Application.Contracts.Services;
using UISTask.Application.Services;

namespace UISTask.Application
{
    public static class ApplicationConfigurationExtension
    {
        public static IServiceCollection AddAppicationConfiguration(
            this IServiceCollection services,
            IConfiguration configuration
            )
        {
            services.AddScoped<ITransactionService, TransactionService>();
            services.AddScoped<IProductService, ProductService>();
            return services;
        }
    }
}
