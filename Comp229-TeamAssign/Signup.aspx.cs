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
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Library;Integrated Security=True");
                SqlCommand comm = new SqlCommand("Insert into (UserName,PhoneNum,Email,Password) VALUES(userN, phnNum,emailt, pass", con);
                comm.Parameters.AddWithValue("userN", untxt.Text);
                comm.Parameters.AddWithValue("phnNum", pntxt.Text);
                comm.Parameters.AddWithValue("emailt", etxt.Text);
                comm.Parameters.AddWithValue("pass", passtxt.Text);
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