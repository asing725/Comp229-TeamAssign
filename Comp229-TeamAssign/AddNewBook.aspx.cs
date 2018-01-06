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
        //Database Connection
        private SqlConnection sqlconnection = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Comp229TeamAssign;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        private String isbn, name,description, language, status, publisher;
        private DateTime publicationDate;
        private Image bookimage;
       

        String insertQueryBooks;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addNewBook_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcommand;
            isbn = ISBNTextBox.Text.ToString();
            name = nameTextBox.Text.ToString();
            description = descriptionTextBox.Text.ToString();
            language = languageTextBox.Text.ToString();
            status = statusTextBox.Text.ToString();
            publicationDate = Convert.ToDateTime(dateOfPublicationTextBox.Text.ToString());

            insertQueryBooks = "INSERT INTO Books VALUES(@ISBN,@Name,@Description,@Status,@BookLanguage,@DateOfPublication)";

            try
            {
                sqlconnection.Open();

               
                //Inserting data values in Books
                sqlcommand = new SqlCommand(insertQueryBooks, sqlconnection);
                sqlcommand.Parameters.AddWithValue("@ISBN", isbn);
                sqlcommand.Parameters.AddWithValue("@Name", name);
                sqlcommand.Parameters.AddWithValue("@Description", description);
                sqlcommand.Parameters.AddWithValue("@Status", status);
                sqlcommand.Parameters.AddWithValue("@BookLanguage", language);
                sqlcommand.Parameters.AddWithValue("@DateOfPublication", publicationDate);
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