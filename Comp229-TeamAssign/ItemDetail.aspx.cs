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
    public partial class ItemDetail : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand comm = new SqlCommand("SELECT * FROM Books WHERE Name = @bookname", con);
            comm.Parameters.AddWithValue("@bookname", Convert.ToString(Session["selectedBook"]));

           
                con.Open();
                SqlDataReader reader = comm.ExecuteReader();
                bookdetail.DataSource = reader;
                bookdetail.DataBind();
                reader.Close();
           
        }



    }
    }