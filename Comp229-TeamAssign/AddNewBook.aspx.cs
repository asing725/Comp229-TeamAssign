using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class AddNewBook : System.Web.UI.Page
    {
        private SqlConnection sqlconnection = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamProject;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        private String ISBN, BookName, BookFormat, Language, Status, Publisher;
        private DateTime PurchaseDate;

        String insertQueryBooks;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addNewBook_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcommand;
            ISBN = ISBNTextBox.Text.ToString();
            BookName = bookNameTextBox.Text.ToString();
            BookFormat = bookFormatTextBox.Text.ToString();
            Language = languageTextBox.Text.ToString();
            Status = statusTextBox.Text.ToString();
            Publisher = publisherTextBox.Text.ToString();
            PurchaseDate = Convert.ToDateTime(purchaseDateTextBox.Text.ToString());
            insertQueryBooks = "INSERT INTO Books VALUES(@ISBN,@BookName,@BookFormat,@Language,@Status,@Publisher,PurchaseDate)";

            try
            {
                sqlconnection.Open();
                sqlcommand = new SqlCommand(insertQueryBooks, sqlconnection);
                sqlcommand.Parameters.AddWithValue("@ISBN", ISBN);
                sqlcommand.Parameters.AddWithValue("@BookName", BookName);
                sqlcommand.Parameters.AddWithValue("@BookFormat", BookFormat);
                sqlcommand.Parameters.AddWithValue("@Language", Language);
                sqlcommand.Parameters.AddWithValue("@Status", Status);
                sqlcommand.Parameters.AddWithValue("@Publisher", Publisher);
                sqlcommand.Parameters.AddWithValue("@PurchaseDate", PurchaseDate);
                sqlcommand.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Write("Error retrieving user data: " + ex.Message);
            }
            finally
            {
                sqlconnection.Close();
            }

            Response.Redirect("~/Home.aspx");

        }

        protected void cancelAddNewBoook_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}