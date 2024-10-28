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
                keyValues: new object[] { new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"), new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"), new Guid("abad5e33-0615-4d14-a9ff-691910864115") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"), new Guid("222d8ae7-e4f1-47ed-a7bf-a0305a6917b6") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"), new Guid("e0230965-9379-4d03-bfae-be9792d9d790") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("ef287483-7d67-4754-8029-74b7a7adda24"), new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("ef287483-7d67-4754-8029-74b7a7adda24"), new Guid("59aa9924-a049-4fc9-81b6-abe621b687fb") });

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("492296e5-0e71-44fb-ab9c-8bc7245a9e57"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("5fca2a63-62a7-40ec-a49d-40aad2205669"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("ef287483-7d67-4754-8029-74b7a7adda24"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("222d8ae7-e4f1-47ed-a7bf-a0305a6917b6"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("49aabfd4-a5e0-4ea7-a47c-6b9ea37e8fc8"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("59aa9924-a049-4fc9-81b6-abe621b687fb"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("abad5e33-0615-4d14-a9ff-691910864115"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("e0230965-9379-4d03-bfae-be9792d9d790"));

            migrationBuilder.AddColumn<string>(
                name: "Unit",
                table: "ProductTransactions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "CurrentQuantity", "InitialQuantity", "Price", "ProductName", "Unit" },
                values: new object[,]
                {
                    { new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"), 200, 200, 2.0m, "Product B", "pieces" },
                    { new Guid("a694e664-6368-4179-8e84-7246a7ec0779"), 100, 100, 10.5m, "Product A", "kg" },
                    { new Guid("fd458913-483b-4832-b144-f4971924db41"), 50, 50, 5.0m, "Product C", "liters" }
                });

            migrationBuilder.InsertData(
                table: "Transactions",
                columns: new[] { "Id", "Date" },
                values: new object[,]
                {
                    { new Guid("2af574f7-005c-4473-850e-60c22c5b1724"), new DateTime(2024, 10, 3, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("4b5287d3-0933-4f49-8c2b-16fd1f62b177"), new DateTime(2024, 10, 4, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("84a7ebf5-3175-4107-a35e-34ee26e1b1d6"), new DateTime(2024, 10, 5, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("e0b25fd9-f1c3-4915-a552-1468c3f54673"), new DateTime(2024, 10, 2, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059"), new DateTime(2024, 10, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "ProductTransactions",
                columns: new[] { "ProductId", "TransactionId", "Quantity", "TotalPrice", "Unit" },
                values: new object[,]
                {
                    { new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"), new Guid("4b5287d3-0933-4f49-8c2b-16fd1f62b177"), 30, 60.0m, "" },
                    { new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"), new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059"), 20, 40.0m, "" },
                    { new Guid("a694e664-6368-4179-8e84-7246a7ec0779"), new Guid("e0b25fd9-f1c3-4915-a552-1468c3f54673"), 5, 52.5m, "" },
                    { new Guid("a694e664-6368-4179-8e84-7246a7ec0779"), new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059"), 10, 105.0m, "" },
                    { new Guid("fd458913-483b-4832-b144-f4971924db41"), new Guid("2af574f7-005c-4473-850e-60c22c5b1724"), 15, 75.0m, "" },
                    { new Guid("fd458913-483b-4832-b144-f4971924db41"), new Guid("84a7ebf5-3175-4107-a35e-34ee26e1b1d6"), 25, 125.0m, "" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"), new Guid("4b5287d3-0933-4f49-8c2b-16fd1f62b177") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"), new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("a694e664-6368-4179-8e84-7246a7ec0779"), new Guid("e0b25fd9-f1c3-4915-a552-1468c3f54673") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("a694e664-6368-4179-8e84-7246a7ec0779"), new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("fd458913-483b-4832-b144-f4971924db41"), new Guid("2af574f7-005c-4473-850e-60c22c5b1724") });

            migrationBuilder.DeleteData(
                table: "ProductTransactions",
                keyColumns: new[] { "ProductId", "TransactionId" },
                keyValues: new object[] { new Guid("fd458913-483b-4832-b144-f4971924db41"), new Guid("84a7ebf5-3175-4107-a35e-34ee26e1b1d6") });

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("6c9e93fa-2eba-4b96-8cc2-2a3a6f2cb8ef"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("a694e664-6368-4179-8e84-7246a7ec0779"));

            migrationBuilder.DeleteData(
                table: "Products",
                keyColumn: "Id",
                keyValue: new Guid("fd458913-483b-4832-b144-f4971924db41"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("2af574f7-005c-4473-850e-60c22c5b1724"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("4b5287d3-0933-4f49-8c2b-16fd1f62b177"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("84a7ebf5-3175-4107-a35e-34ee26e1b1d6"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("e0b25fd9-f1c3-4915-a552-1468c3f54673"));

            migrationBuilder.DeleteData(
                table: "Transactions",
                keyColumn: "Id",
                keyValue: new Guid("f0ce4bc0-eae3-4292-b2ab-af0f47b19059"));

            migrationBuilder.DropColumn(
                name: "Unit",
                table: "ProductTransactions");

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
        }
    }
}
