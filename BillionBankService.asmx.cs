using System;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.SqlClient;
using BillionBankTransaction;


[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.ComponentModel.ToolboxItem(false)]
public class BillionBankWebService : System.Web.Services.WebService
{
    private SqlConnection connection;
    private SqlCommand command;
    private SqlDataAdapter adapter;
    private DataSet dataset;

    public BillionBankWebService()
    {
        connection = new SqlConnection("Data Source=localhost;Initial Catalog=BillionBankTransaction;Integrated Security=True");
    }

    [WebMethod]
    public Account GetAccountByEmailAndPassword(string email, string password)
    {
        Account account = null;

        command = new SqlCommand("SELECT * FROM Account WHERE Email = @Email AND Password = @Password", connection);
        command.Parameters.AddWithValue("@Email", email);
        command.Parameters.AddWithValue("@Password", password);

        connection.Open();
        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            account = new Account();
            account.AccountID = reader.GetInt32(0);
            account.Email = reader.GetString(1);
            account.Password = reader.GetString(2);
            account.UserName = reader.GetString(3);
            account.AccountNumber = reader.GetInt32(4);
            account.Address = reader.GetString(5);
            account.AccountType = reader.GetString(6);
            account.Gender = reader.GetString(7);
            account.Amount = reader.GetInt32(5);
            account.Answer = reader.GetString(6);
        }

        connection.Close();

        return account;
    }

    [WebMethod]
    public Account GetAccountByEmail(string email)
    {
        Account account = null;

        command = new SqlCommand("SELECT * FROM Account WHERE Email = @Email", connection);
        command.Parameters.AddWithValue("@Email", email);

        connection.Open();
        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            account = new Account();
            account.AccountID = reader.GetInt32(0);
            account.Email = reader.GetString(1);
            account.Password = reader.GetString(2);
            account.UserName = reader.GetString(3);
            account.AccountNumber = reader.GetInt32(4);
            account.Address = reader.GetString(5);
            account.AccountType = reader.GetString(6);
            account.Gender = reader.GetString(7);
            account.Amount = reader.GetInt32(5);
            account.Answer = reader.GetString(6);
        }

        connection.Close();

        return account;
    }
    [WebMethod]
    public Account GetAccountByID(int AccountID)
    {
        Account account = null;

        command = new SqlCommand("SELECT * FROM Account WHERE AccountID = @AccountID", connection);
        command.Parameters.AddWithValue("@AccountID", AccountID);

        connection.Open();
        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read())
        {
            account = new Account();
            account.AccountID = reader.GetInt32(0);
            account.Email = reader.GetString(1);
            account.Password = reader.GetString(2);
            account.UserName = reader.GetString(3);
            account.AccountNumber = reader.GetInt32(4);
            account.Address = reader.GetString(5);
            account.AccountType = reader.GetString(6);
            account.Gender = reader.GetString(7);
            account.Amount = reader.GetInt32(5);
            account.Answer = reader.GetString(6);
        }

        connection.Close();

        return account;
    }

    [WebMethod]
    public void AddAccount(Account account)
    {
        command = new SqlCommand("INSERT INTO Account (AccountID, AccountNumber, AccountType, Email, Address, Gender, Amount, UserName, Password, Answer) VALUES (@AccountID, @AccountNumber, @AccountType, @Email, @Address, @Gender, @Amount, @UserName, @Password, @Answer)", connection);
        command.Parameters.AddWithValue("@AccountID", account.AccountID);
        command.Parameters.AddWithValue("@AccountNumber", account.AccountNumber);
        command.Parameters.AddWithValue("@AccountType", account.AccountType);
        command.Parameters.AddWithValue("@Email", account.Email);
        command.Parameters.AddWithValue("@Address", account.Address);
        command.Parameters.AddWithValue("@Gender", account.Gender);
        command.Parameters.AddWithValue("@Amount", account.Amount);
        command.Parameters.AddWithValue("@UserName", account.UserName);
        command.Parameters.AddWithValue("@Password", account.Password);
        command.Parameters.AddWithValue("@Answer", account.Answer);

        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();
    }

    [WebMethod]
    public void UpdateAccount(Account account)
    {
        command = new SqlCommand("UPDATE Account SET Email = @Email, Password = @Password, AccountID = @AccountID, AccountNumber = @AccountNumber, Address = @Address, Gender = @Gender, Amount = @Amount, UserName = @UserName Answer = @Answer  WHERE AccountID = @AccountID", connection);
        command.Parameters.AddWithValue("@AccountID", account.AccountID);
        command.Parameters.AddWithValue("@AccountNumber", account.AccountNumber);
        command.Parameters.AddWithValue("@AccountType", account.AccountType);
        command.Parameters.AddWithValue("@Email", account.Email);
        command.Parameters.AddWithValue("@Address", account.Address);
        command.Parameters.AddWithValue("@Gender", account.Gender);
        command.Parameters.AddWithValue("@Amount", account.Amount);
        command.Parameters.AddWithValue("@UserName", account.UserName);
        command.Parameters.AddWithValue("@Password", account.Password);
        command.Parameters.AddWithValue("@Answer", account.Answer);

        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();
    }

    [WebMethod]
    public Account[] GetAccountsByAccountID(int accountID)
    {
        Account[] accounts = null;

        command = new SqlCommand("SELECT * FROM Account WHERE accountID = @accountID", connection);
        command.Parameters.AddWithValue("@accountID", accountID);

        connection.Open();
        adapter = new SqlDataAdapter(command);
        dataset = new DataSet();
        adapter.Fill(dataset, "Account");
        connection.Close();

        accounts = new Account[dataset.Tables["Account"].Rows.Count];

        for (int i = 0; i < dataset.Tables["Account"].Rows.Count; i++)
        {
            accounts[i] = new Account();
            accounts[i].AccountID = dataset.Tables["Accounts"].Rows[i].GetInt32(0);
            accounts[i].AccountNumber = dataset.Tables["Accounts"].Rows[i].GetInt32(1); accounts[i].AccountNumber = dataset.Tables["Accounts"].Rows[i].GetString(2);
            accounts[i].AccountType = dataset.Tables["Accounts"].Rows[i].GetString(3);

        }

        return accounts;
    }

    [WebMethod]
    public Transaction[] GetTransactionByTransactionID(int accountID)
    {
        Transaction[] transaction = null;

        command = new SqlCommand("SELECT * FROM Transaction WHERE TransactionID = @SenderAccountID OR ReceiverAccountID = @ReceiverAccountID", connection);
        command.Parameters.AddWithValue("@SenderAccountID", accountID);
        command.Parameters.AddWithValue("@ReceiverAccountID", accountID);

        connection.Open();
        adapter = new SqlDataAdapter(command);
        dataset = new DataSet();
        adapter.Fill(dataset, "Transaction");
        connection.Close();

        transaction = new Transaction[dataset.Tables["Transaction"].Rows.Count];

        for (int i = 0; i < dataset.Tables["Transaction"].Rows.Count; i++)
        {
            transaction[i] = new Transaction();
            transaction[i].TransactionID = dataset.Tables["Transaction"].Rows[i].GetInt32(0);
            transaction[i].SenderAccountID = dataset.Tables["Transaction"].Rows[i].GetInt32(1);
            transaction[i].ReceiverAccountID = dataset.Tables["Transaction"].Rows[i].GetInt32(2);
            transaction[i].amount = dataset.Tables["Transaction"].Rows[i].GetInt(5);
            transaction[i].Remarks = dataset.Tables["Transaction"].Rows[i].GetString(4);
            transaction[i].TransactionType = dataset.Tables["Transaction"].Rows[i].GetString(4);
        }

        return transaction;
    }

    [WebMethod]
    public void AddTransaction(Transaction transaction)
    {
        command = new SqlCommand("INSERT INTO Transaction (SenderAccountID, ReceiverAccountID, amount, Remarks, TransactionType) VALUES (@SenderAccountID, @ReceiverAccountID, @amount, @Remarks, @TransactionType)", connection);
        command.Parameters.AddWithValue("@SenderAccountID", transaction.SenderAccountID);
        command.Parameters.AddWithValue("@ReceiverAccountID", transaction.ReceiverAccountID);
        command.Parameters.AddWithValue("@amount", transaction.amount);
        command.Parameters.AddWithValue("@Remarks", transaction.Remarks);
        command.Parameters.AddWithValue("@TransactionType", transaction.TransactionType);

        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();

        // Write transaction information to log file
        System.IO.File.AppendAllText("TransactionLog.txt", "Transaction ID: " + transaction.TransactionID + " Sender Account ID: " + transaction.SenderAccountID + " Receiver Account ID: " + transaction.ReceiverAccountID + "  Amount: " + transaction.amount + " Transaction Type: " + transaction.TransactionType + "\n");
    }

    internal void Send(int SenderAccountID, int ReceiverAccountID, decimal amount)
    {
        throw new NotImplementedException();
    }
}
