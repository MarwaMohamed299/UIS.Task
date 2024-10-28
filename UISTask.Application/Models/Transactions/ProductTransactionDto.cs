namespace UISTask.Application.Models.Transactions
{
    public class ProductTransactionDto
    {
        public Guid ProductId { get; set; }
        public string ProductName { get; set; } = string.Empty;
        public string Unit { get; set; } = string.Empty;
        public int Quantity { get; set; }
        public decimal TotalPrice { get; set; }
    }
}