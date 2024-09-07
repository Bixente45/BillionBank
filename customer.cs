using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BillionBankTransaction
{
    public class customer
    {
        public int CustomerID { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public string IDNumber { get; set; }
        public string Address { get; set; }
        public string ContactDetails { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
    }
}