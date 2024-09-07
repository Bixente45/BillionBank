using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBankTransaction
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e) 
        {
            Response.Redirect("Login.aspx");
            //When you click the cancel button on the website when trying to change password, it redirects you back to the login page.
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            // this button control updates the database when the user changes password
            if (Session["ForgotPassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Update Account set Password= @Password where Username= @Username", con);
                cmd.Parameters.AddWithValue("@Password", txtNewPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@Username", Session["ForgotPassword"]);
                try
                {
                    con.Open();
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                    else
                    {
                        error.InnerText = "Invalid Input.";
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " '</script>");
                }
                finally
                {
                    con.Close();
                }
            }
            else 
            {
                Response.Redirect("ForgotPassword.aspx");
            }
        }
    }
}

//Name of the file:Change Password
//Name of the author:Bixente Mazwi Mkhwanazi
//Description of the code:Changes password