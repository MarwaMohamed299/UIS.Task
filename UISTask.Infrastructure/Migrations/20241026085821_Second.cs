using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace UISTask.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class Second : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"), new Guid("4b2d8a78-0eef-46b2-b3ef-db94d5fca01a") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"), new Guid("ebe183af-678e-4446-b25a-55e31567a64c") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("8107907a-eeba-4b65-a337-19e64473f454"), new Guid("04bf5f1e-6486-4cb0-83e2-0255bf5ab0d2") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("8107907a-eeba-4b65-a337-19e64473f454"), new Guid("ebe183af-678e-4446-b25a-55e31567a64c") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"), new Guid("5cb414ee-f832-49eb-a87d-3561ea59eb81") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"), new Guid("e9758d9e-9f5b-42a9-b6c1-98dd3f5c3572") });

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("2bf41594-840a-4093-a789-bf2b25f7f5f3"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("8107907a-eeba-4b65-a337-19e64473f454"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("f97caed1-cbcb-4ad7-a06f-502a5dadaf1a"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("04bf5f1e-6486-4cb0-83e2-0255bf5ab0d2"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("4b2d8a78-0eef-46b2-b3ef-db94d5fca01a"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("5cb414ee-f832-49eb-a87d-3561ea59eb81"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("e9758d9e-9f5b-42a9-b6c1-98dd3f5c3572"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("ebe183af-678e-4446-b25a-55e31567a64c"));

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "CurrentQuantity", "InitialQuantity", "Price", "ProductName", "Unit" },
                values: new object[,]
                {
                    { new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"), 50, 50, 5.0m, "Product C", "liters" },
                    { new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"), 100, 100, 10.5m, "Product A", "kg" },
                    { new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"), 200, 200, 2.0m, "Product B", "pieces" }
                });

            migrationBuilder.InsertData(
                table: "Transactions",
                columns: new[] { "Id", "Date" },
                values: new object[,]
                {
                    { new Guid("27a38c3b-7f37-4f3a-96c6-36caf960f805"), new DateTime(2024, 10, 5, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("9eacff09-2939-4fc2-b51a-da4c7c2690e3"), new DateTime(2024, 10, 2, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("ae9b2941-7140-48bd-a7e8-901ee37e1bf4"), new DateTime(2024, 10, 4, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f"), new DateTime(2024, 10, 3, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("fa420b22-7309-42d0-a269-fce44df13ad3"), new DateTime(2024, 10, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "ProductTransactions",
                columns: new[] { "ProductId", "TransactionId", "Quantity", "TotalPrice" },
                values: new object[,]
                {
                    { new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"), new Guid("27a38c3b-7f37-4f3a-96c6-36caf960f805"), 25, 125.0m },
                    { new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"), new Guid("f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f"), 15, 75.0m },
                    { new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"), new Guid("9eacff09-2939-4fc2-b51a-da4c7c2690e3"), 5, 52.5m },
                    { new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"), new Guid("fa420b22-7309-42d0-a269-fce44df13ad3"), 10, 105.0m },
                    { new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"), new Guid("ae9b2941-7140-48bd-a7e8-901ee37e1bf4"), 30, 60.0m },
                    { new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"), new Guid("fa420b22-7309-42d0-a269-fce44df13ad3"), 20, 40.0m }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"), new Guid("27a38c3b-7f37-4f3a-96c6-36caf960f805") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"), new Guid("f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"), new Guid("9eacff09-2939-4fc2-b51a-da4c7c2690e3") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"), new Guid("fa420b22-7309-42d0-a269-fce44df13ad3") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"), new Guid("ae9b2941-7140-48bd-a7e8-901ee37e1bf4") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"), new Guid("fa420b22-7309-42d0-a269-fce44df13ad3") });

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("31ac27d7-4c50-4dc7-8019-1a4e52a37853"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("366c394a-7818-4b06-94c1-c7525a7f8415"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("7874cf2b-b47e-4df2-b2c4-37c04fc03dd7"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("27a38c3b-7f37-4f3a-96c6-36caf960f805"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("9eacff09-2939-4fc2-b51a-da4c7c2690e3"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("ae9b2941-7140-48bd-a7e8-901ee37e1bf4"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("fa420b22-7309-42d0-a269-fce44df13ad3"));

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
        }
    }
}
