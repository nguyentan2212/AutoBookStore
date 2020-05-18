using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookStoreManagement.Models
{
    public class Bill
    {
        public string StaffId { get; set; }
        public string CusTomerId { get; set; }
        public string Bill_Id { get; set; }
        public DateTime date { get; set; }
        public int ToTalPrice { get; set; }
        public int MoneyReceived { get; set; }
        public int MoneyReturned { get; set; }
    }
}
