using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace UISTask.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class Initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ProductName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Price = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    InitialQuantity = table.Column<int>(type: "int", nullable: false),
                    CurrentQuantity = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Transactions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Date = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Transactions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductTransactions",
                columns: table => new
                {
                    ProductId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TransactionId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Quantity = table.Column<int>(type: "int", nullable: false),
                    TotalPrice = table.Column<decimal>(type: "decimal(18,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductTransactions", x => new { x.ProductId, x.TransactionId });
                    table.ForeignKey(
                        name: "FK_ProductTransactions_Products_ProductId",
                        column: x => x.ProductId,
                        principalTable: "Products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ProductTransactions_Transactions_TransactionId",
                        column: x => x.TransactionId,
                        principalTable: "Transactions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "CurrentQuantity", "InitialQuantity", "Price", "ProductName", "Unit" },
                values: new object[,]
                {
                    { new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"), 200, 200, 2.0m, "Product B", "pieces" },
                    { new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"), 50, 50, 5.0m, "Product C", "liters" },
                    { new Guid("ef287483-7d67-4754-8029-74b7a7adda24"), 100, 100, 10.5m, "Product A", "kg" }
                });

            migrationBuilder.InsertData(
                table: "Transactions",
                columns: new[] { "Id", "Date" },
                values: new object[,]
                {
                    { new Guid("222d8ae7-e4f1-47ed-a7bf-a0305a6917b6"), new DateTime(2024, 10, 5, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8"), new DateTime(2024, 10, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("59aa9924-a049-4fc9-81b6-abe621b687fb"), new DateTime(2024, 10, 2, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("abad5e33-0615-4d14-a9ff-691910864115"), new DateTime(2024, 10, 4, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("e0230965-9379-4d03-bfae-be9792d9d790"), new DateTime(2024, 10, 3, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "ProductTransactions",
                columns: new[] { "ProductId", "TransactionId", "Quantity", "TotalPrice" },
                values: new object[,]
                {
                    { new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"), new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8"), 20, 40.0m },
                    { new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"), new Guid("abad5e33-0615-4d14-a9ff-691910864115"), 30, 60.0m },
                    { new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"), new Guid("222d8ae7-e4f1-47ed-a7bf-a0305a6917b6"), 25, 125.0m },
                    { new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"), new Guid("e0230965-9379-4d03-bfae-be9792d9d790"), 15, 75.0m },
                    { new Guid("ef287483-7d67-4754-8029-74b7a7adda24"), new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8"), 10, 105.0m },
                    { new Guid("ef287483-7d67-4754-8029-74b7a7adda24"), new Guid("59aa9924-a049-4fc9-81b6-abe621b687fb"), 5, 52.5m }
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProductTransactions_TransactionId",
                table: "ProductTransactions",
                column: "TransactionId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ProductTransactions");

            migrationBuilder.DropTable(
                name: "Products");

            migrationBuilder.DropTable(
                name: "Transactions");
        }
    }
}
