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
        //A link button with name 'Rent' will be generated if the status of the book is 'Available'
        private LinkButton rentLinkButton; 

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

        protected void rentBook(object sender, CommandEventArgs e)
        {
            //Reading BookID from database
            SqlCommand getBookIdComm = new SqlCommand("SELECT BookID FROM Books WHERE Name = @bookname", con);
            getBookIdComm.Parameters.AddWithValue("@bookname", Convert.ToString(Session["selectedBook"]));
            con.Open();
            SqlDataReader bookIdReader = getBookIdComm.ExecuteReader();
            String bookId = bookIdReader["BookID"].ToString();
            bookIdReader.Close();
            //Reading MemberID from database
            SqlCommand getMemberIdComm = new SqlCommand("SELECT MemberID FROM Books WHERE Name = @bookname", con);
            getBookIdComm.Parameters.AddWithValue("@bookname", Convert.ToString(Session["selectedBook"]));
            con.Open();
            SqlDataReader reader = getBookIdComm.ExecuteReader();
            String memberId = reader["MemberID"].ToString();
            reader.Close();
            //Sending MemberID and BookID to LoanPage
            Session["MemberId"] = memberId;
            Session["BookId"] = bookId;
            Response.Redirect("~/LoanPage.aspx");
            
        }

        protected void bookdetail_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            
            if (e.CommandName == "rentLink")
            {
                String status = e.CommandArgument.ToString();
                if (status == "Available")
                {

                    //Instantiating the link Button
                    rentLinkButton = new LinkButton();
                    rentLinkButton.ID = "rentLnButton";
                    rentLinkButton.Text = "Rent";
                    rentLinkButton.CommandName = "rentCommandName";
                    rentLinkButton.CommandArgument = "rentCommandArgument";
                    rentLinkButton.Command += new CommandEventHandler(rentBook);


                    //Instantiation a panel and adding the link button on it to show on page
                    this.Form.Controls.Add(rentLinkButton);
                    //Confused here as link button was not getting displayed
                    Panel addLnButtonPanel = new Panel();
                    addLnButtonPanel.Controls.Add(rentLinkButton);

                }
            }
        }
    }
    }