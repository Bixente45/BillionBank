using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BillionBankTransaction
{
    public class Transaction
    {
        public int TransactionID { get; set; }
        public int SenderAccountID { get; set; }
        public int ReceiverAccountID { get; set; }
        public string Remarks { get; set; }
        public string TransactionType { get; set; }

        public int amount { get; set;}
    }
}