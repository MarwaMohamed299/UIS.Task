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
                    { new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"), 200, 200, 2.0m, "Product B", "pieces" },
                    { new Guid("8107907a-eeba-4b65-a337-19e64473f454"), 100, 100, 10.5m, "Product A", "kg" },
                    { new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"), 50, 50, 5.0m, "Product C", "liters" }
                });

            migrationBuilder.InsertData(
                table: "Transactions",
                columns: new[] { "Id", "Date" },
                values: new object[,]
                {
                    { new Guid("04bf5f1e-6486-4cb0-83e2-0255bf5ab0d2"), new DateTime(2024, 10, 2, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("4b2d8a78-0eef-46b2-b3ef-db94d5fca01a"), new DateTime(2024, 10, 4, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("5cb414ee-f832-49eb-a87d-3561ea59eb81"), new DateTime(2024, 10, 5, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("e9758d9e-9f5b-42a9-b6c1-98dd3f5c3572"), new DateTime(2024, 10, 3, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("ebe183af-678e-4446-b25a-55e31567a64c"), new DateTime(2024, 10, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "ProductTransactions",
                columns: new[] { "ProductId", "TransactionId", "Quantity", "TotalPrice" },
                values: new object[,]
                {
                    { new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"), new Guid("4b2d8a78-0eef-46b2-b3ef-db94d5fca01a"), 30, 60.0m },
                    { new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"), new Guid("ebe183af-678e-4446-b25a-55e31567a64c"), 20, 40.0m },
                    { new Guid("8107907a-eeba-4b65-a337-19e64473f454"), new Guid("04bf5f1e-6486-4cb0-83e2-0255bf5ab0d2"), 5, 52.5m },
                    { new Guid("8107907a-eeba-4b65-a337-19e64473f454"), new Guid("ebe183af-678e-4446-b25a-55e31567a64c"), 10, 105.0m },
                    { new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"), new Guid("5cb414ee-f832-49eb-a87d-3561ea59eb81"), 25, 125.0m },
                    { new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"), new Guid("e9758d9e-9f5b-42a9-b6c1-98dd3f5c3572"), 15, 75.0m }
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
