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

            SqlCommand usrNme = new SqlCommand("Select UserName FROM [dbo].Member where UserName = @user", con);
            SqlCommand passwrd = new SqlCommand("Select Password FROM [dbo].Member where UserName = @user", con);

            usrNme.Parameters.Add("@user", SqlDbType.NVarChar);
            usrNme.Parameters["@user"].Value = userNtxt.Text;
            passwrd.Parameters.Add("@user", SqlDbType.NVarChar);
            passwrd.Parameters["@user"].Value = userNtxt.Text;

            try
            {
                con.Open();
                string usr = usrNme.ExecuteScalar().ToString();

                if (usr != null && String.Equals(usr, userNtxt.Text))
                {
                    string pwd = passwrd.ExecuteScalar().ToString();

                    if (pwd != null && String.Equals(pwd, passtxt.Text))
                    {
                        FormsAuthentication.SetAuthCookie(usr, false);
                       
                        Session["LoggedUser"] = userNtxt.Text;
                        Response.Redirect(Convert.ToString(Session["Currentpage"]));

                    }
                    else
                    {
                        msgtxt.Text = "Incorrect username or password.";
                    }
                }

            }
            catch (Exception ex)
            {
                msgtxt.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
            }
        }
               
        }
    }
