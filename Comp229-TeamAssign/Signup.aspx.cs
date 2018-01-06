using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Comp229_TeamAssign
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True");
                SqlCommand comm = new SqlCommand("Insert into [dbo].Member(LastName,FirstName,Email,Password,UserName) VALUES(@lName,@fmName,@email,@pwd,@user)", con);
               comm.Parameters.AddWithValue("@user", usrtxt.Text);
                comm.Parameters.AddWithValue("@fmName", fntxt.Text);
                comm.Parameters.AddWithValue("@lName", lntxt.Text);
                comm.Parameters.AddWithValue("@email", etxt.Text);
                comm.Parameters.AddWithValue("@pwd", passtxt.Text);
                con.Open();               
                comm.ExecuteNonQuery();
                con.Close();

            }
            finally
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
           
        }
    }
}