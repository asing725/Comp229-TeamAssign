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
        private String isbn, author, language, status, publisher;
        private DateTime publicationDate;
        private int authorId, publisherId;
        private String stringAuthorId, stringPublisherId;
        SqlDataReader myReader;

        String insertQueryBooks,insertQueryPublisher,insertQueryAuthor;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addNewBook_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcommand;
            isbn = ISBNTextBox.Text.ToString();
            author = authorTextBox.Text.ToString();
            language = languageTextBox.Text.ToString();
            status = statusTextBox.Text.ToString();
            publisher = publisherTextBox.Text.ToString();
            publicationDate = Convert.ToDateTime(publicationDateTextBox.Text.ToString());

            insertQueryAuthor = "INSERT INTO Author VALUES(@Author)";
            insertQueryPublisher = "INSERT INTO Publisher VALUES(@Publisher)";
            insertQueryBooks = "INSERT INTO Books VALUES(@ISBN,@AuthorID,@PublisherID,@Status,@BookLanguage,@DateOfPublication)";

            try
            {
                sqlconnection.Open();

                //Inserting data values in Author
                sqlcommand = new SqlCommand(insertQueryAuthor, sqlconnection);
                sqlcommand.Parameters.AddWithValue("@Author", author);
                sqlcommand.ExecuteNonQuery();

                //Getting AuthorId 
                string selectAuthorIdQuery = "SELECT AuthorId FROM Author WHERE AuthorName= @Author";
                sqlcommand.Parameters.AddWithValue("@Author", author);
                SqlCommand getAuthorIdComm = new SqlCommand(selectAuthorIdQuery, sqlconnection);
                myReader = getAuthorIdComm.ExecuteReader();
                if (myReader.Read())
                {
                    stringAuthorId = (string)myReader[0];
                }
                myReader.Close();
                authorId = Int32.Parse(stringAuthorId);

                //Inserting data values in Publisher
                sqlcommand = new SqlCommand(insertQueryPublisher, sqlconnection);
                sqlcommand.Parameters.AddWithValue("@Publisher", publisher);
                sqlcommand.ExecuteNonQuery();

                //Getting PublisherId 
                string selectPublisherIdQuery = "SELECT PublisherID FROM Publisher WHERE PublisherName= @Publisher";
                sqlcommand.Parameters.AddWithValue("@Publisher", publisher);
                SqlCommand getPublisherIdComm = new SqlCommand(selectPublisherIdQuery, sqlconnection);
                myReader = getPublisherIdComm.ExecuteReader();
                if (myReader.Read())
                {
                    stringPublisherId = (string)myReader[0];
                }
                myReader.Close();
                publisherId = Int32.Parse(stringPublisherId);

                //Inserting data values in Books
                sqlcommand.Parameters.AddWithValue("@ISBN", isbn);
                sqlcommand.Parameters.AddWithValue("@AuthorID", authorId);
                sqlcommand.Parameters.AddWithValue("@PublisherID", publisherId);
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