using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Web.Security;


namespace Comp229_TeamAssign
{
    public partial class Home : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Currentpage"] = "~/Home.aspx";
            notlogged.Visible = true;
            trackitem();
            bool logstatus = (HttpContext.Current.User != null) && HttpContext.Current.User.Identity.IsAuthenticated;
           
            if (Session["LoggedUser"] != null)
            {
                notlogged.Visible = false;
                Username.Text = (string)(Session["LoggedUser"]);
                loggedin.Visible = true;
            }

            if (logstatus == true)
            {
                notlogged.Visible = false;
            }

        }


        private void trackitem()
        {

            SqlCommand comm = new SqlCommand("Select * from[dbo].Books where Status = 'Loaned' ", con);
            con.Open();
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable tabn = new DataTable();
                tabn.Load(reader);
                loanedbooks.DataSource = tabn;
                loanedbooks.DataBind();
              
            }
            con.Close();
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
                        FormsAuthentication.SetAuthCookie(usr, true);
                        notlogged.Visible = false;
                        Session["LoggedUser"] = userNtxt.Text;
                        Response.Redirect("~/Home.aspx");
                        
                    }
                  
                }
               
            }
            catch (Exception ex)
            {
                msgtxt.Text = "Incorrect username or password.";
            }
            finally
            {
                con.Close();
            }
        }
       

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("Home.aspx");
        }
    }
    }
    
