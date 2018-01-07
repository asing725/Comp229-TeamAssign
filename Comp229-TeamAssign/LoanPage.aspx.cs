using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class LoanPage : System.Web.UI.Page
    {
        private DateTime returnDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            dateOfBorrowTextBox.Text = System.DateTime.Now.ToString("dd-MM-yyyy");
            returnDate = DateTime.Now.AddDays(20);
            dateOfReturnTextBox.Text = returnDate.ToString("dd-MM-yyyy");

        }
    }
}