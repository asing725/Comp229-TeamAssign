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
    public partial class Books : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            displayloaneditem();
            displaytrackitem();
        }

        private void displayloaneditem()
        {

            SqlCommand comm = new SqlCommand("Select * from[dbo].Books where Status = 'Loaned' ", con);   
            con.Open();
            SqlDataReader reader = comm.ExecuteReader();
            Gviewtrack.DataSource = reader;
            Gviewtrack.DataBind();
            con.Close();
        }
        private void displaytrackitem()
        {

            SqlCommand comm = new SqlCommand("Select * from[dbo].Books", con);
            con.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GviewOwnd.DataSource = reader;
            GviewOwnd.DataBind();
            con.Close();
        }
    }
}