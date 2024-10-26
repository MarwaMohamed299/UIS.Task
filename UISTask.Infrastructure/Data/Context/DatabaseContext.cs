using Microsoft.EntityFrameworkCore;
using System;
using UISTask.Domain.Entities;

namespace UISTask.Infrastructure.Data.Context
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)

        {

        }
        public DbSet<Product> Products { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<ProductTransaction> ProductTransactions { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder builder)
        {
            builder.LogTo((query) =>
            {
                File.AppendAllText("Queries.sql", $"\n{query}");
            }).EnableSensitiveDataLogging();
        }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ProductTransaction>()
                .HasKey(pt => new { pt.ProductId, pt.TransactionId });

            modelBuilder.Entity<ProductTransaction>()
                .HasOne(pt => pt.Product)
                .WithMany(p => p.ProductTransaction)
                .HasForeignKey(pt => pt.ProductId);

            modelBuilder.Entity<ProductTransaction>()
                .HasOne(pt => pt.Transaction)
                .WithMany(t => t.ProductTransactions)
                .HasForeignKey(pt => pt.TransactionId);

            // Predefined product IDs for consistency
            var productAId = Guid.NewGuid();
            var productBId = Guid.NewGuid();
            var productCId = Guid.NewGuid();

            // Seeding Products
            modelBuilder.Entity<Product>().HasData(
                new Product { Id = productAId, ProductName = "Product A", Unit = "kg", Price = 10.5m, InitialQuantity = 100, CurrentQuantity = 100 },
                new Product { Id = productBId, ProductName = "Product B", Unit = "pieces", Price = 2.0m, InitialQuantity = 200, CurrentQuantity = 200 },
                new Product { Id = productCId, ProductName = "Product C", Unit = "liters", Price = 5.0m, InitialQuantity = 50, CurrentQuantity = 50 }
            );

            // Predefined transaction IDs
            var transaction1Id = Guid.NewGuid();
            var transaction2Id = Guid.NewGuid();
            var transaction3Id = Guid.NewGuid();
            var transaction4Id = Guid.NewGuid();
            var transaction5Id = Guid.NewGuid();

            // Seeding Transactions
            modelBuilder.Entity<Transaction>().HasData(
                new Transaction { Id = transaction1Id, Date = new DateTime(2024, 10, 1) },
                new Transaction { Id = transaction2Id, Date = new DateTime(2024, 10, 2) },
                new Transaction { Id = transaction3Id, Date = new DateTime(2024, 10, 3) },
                new Transaction { Id = transaction4Id, Date = new DateTime(2024, 10, 4) },
                new Transaction { Id = transaction5Id, Date = new DateTime(2024, 10, 5) }
            );

            // Seeding Product Transactions
            modelBuilder.Entity<ProductTransaction>().HasData(
                new ProductTransaction { ProductId = productAId, TransactionId = transaction1Id, Quantity = 10, TotalPrice = 105.0m },
                new ProductTransaction { ProductId = productBId, TransactionId = transaction1Id, Quantity = 20, TotalPrice = 40.0m },
                new ProductTransaction { ProductId = productAId, TransactionId = transaction2Id, Quantity = 5, TotalPrice = 52.5m },
                new ProductTransaction { ProductId = productCId, TransactionId = transaction3Id, Quantity = 15, TotalPrice = 75.0m },
                new ProductTransaction { ProductId = productBId, TransactionId = transaction4Id, Quantity = 30, TotalPrice = 60.0m },
                new ProductTransaction { ProductId = productCId, TransactionId = transaction5Id, Quantity = 25, TotalPrice = 125.0m }
            );
        }
    }
}
