using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookStoreManagement.Models
{
    public class ImportItem
    {
        public string Id { get; set; }
        public string ImportListId { get; set; }
        public string BookId { get; set; }
        public int Amount { get; set; }
    }
}
