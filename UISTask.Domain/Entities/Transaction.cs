namespace UISTask.Domain.Entities
{
    public class Transaction
    {
        public Guid Id { get; set; }
        public DateTime Date { get; set; }

        public ICollection<ProductTransaction>? ProductTransactions { get; set; } = new List<ProductTransaction>();
    }
}
