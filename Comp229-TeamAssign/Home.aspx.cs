using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Comp229_TeamAssign
{
    public partial class Home : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Library;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           // displayitem();  // enable this after adding database
                }

        private void displayitem()
        {

            SqlCommand comm = new SqlCommand("Select * from ;", con);  //update commnd after adding database
            con.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GviewHome.DataSource = reader;
            GviewHome.DataBind();
            con.Close();
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
}