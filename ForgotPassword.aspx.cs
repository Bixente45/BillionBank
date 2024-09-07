using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBankTransaction
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getUserSecurityQuestions();
                //if user forgot password, the security question is collected from the database.
            }
            
        }

        void getUserSecurityQuestions()

            //this gets security questions for user to input answer
        {
            if (Session["ForgotPassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.UserName,s.SecurityQuestionName,a.Answer from Account a inner join SecurityQuestions s on a.SecurityQuestionId = s.SecurityQuestionId where Username = @Username", con);
                cmd.Parameters.AddWithValue("@Username", Session["ForgotPassword"]);

                try
                {
                    con.Open();
                    reader = cmd.ExecuteReader();
                    bool isTrue = false;
                    while (reader.Read())
                    {
                        isTrue = true;
                        lblUsername.Text = reader["UserName"].ToString();
                        lblSecurityQuestions.Text = reader["SecurityQuestionName"].ToString();
                        hdnAnswer.Value = reader["Answer"].ToString();
                    }
                    if (!isTrue)
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
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
            //when the cancel button is pressed, the page will return to the login page.
        }

        protected void btnForgotPaasword_Click(object sender, EventArgs e)
        {
            if (txtAnswer.Text.Trim() == hdnAnswer.Value)
            {
                Response.Redirect("ChangePassword.aspx");
                //if correct security question is correct, page will be redirected to the change password page
            }
            else
            {
                error.InnerText = "Invalid Input.";
                //if the security password is wrong, eror will be this
            }
        }
    }

}
//Name of the file:Change Password
//Name of the author:Bixente Mazwi Mkhwanazi
//Description of the code:forgets password
