namespace BookStoreManagement.Models
{
    public class Book
    {
        public string Id { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public int Amount { get; set; }
        public string Location { get; set; }
        public int ImportPrice { get; set; }
        public int Price { get; set; }
    }
}
