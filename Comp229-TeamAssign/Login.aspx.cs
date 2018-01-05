using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;

namespace Comp229_TeamAssign
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        
            protected void logInbtn_Click(object sender, EventArgs e)
        {

            SqlCommand usrNme = new SqlCommand("Select EmailAddress FROM [dbo].Member where EmailAddress = @username", con);
            SqlCommand passwrd = new SqlCommand("Select Password FROM [dbo].Member where EmailAddress = @username", con);

            usrNme.Parameters.Add("@username", SqlDbType.NVarChar);
            usrNme.Parameters["@username"].Value = userNtxt.Text;

            passwrd.Parameters.Add("@username", SqlDbType.NVarChar);
            passwrd.Parameters["@username"].Value = userNtxt.Text;

            try
            {
                con.Open();
                string username = usrNme.ExecuteScalar().ToString();

                if (username != null && String.Equals(username, userNtxt.Text))
                {
                    string password = passwrd.ExecuteScalar().ToString();

                    if (password != null && String.Equals(password, passtxt.Text))
                    {
                        FormsAuthentication.SetAuthCookie(username, true);
                        Response.Redirect("~/Home.aspx");

                    }
                }
               

            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                con.Close();
            }
        }
               
        }
    }
