using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BillionBankTransaction
{
    public class Account
    {
        public int AccountID { get; set; }
        public int AccountNumber { get; set; }
        public string AccountType { get; set; }
        public string Email { get; set; }
        public string Gender { get; set; }
        public int Amount { get; set; }
        public string UserName { get; set; }
        public string Address { get; set; }

        public string Password { get; set; }

        public string Answer { get; set; }
    }
}