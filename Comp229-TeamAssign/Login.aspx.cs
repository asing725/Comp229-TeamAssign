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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Library;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void logInbtn_Click(object sender, EventArgs e)
        {
           
         
        }
    }
}