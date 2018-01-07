using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewBook.aspx");
        }
    }
}