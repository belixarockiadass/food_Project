using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace food
{
    public partial class advol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Get connection string from web.config
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                // Create SQL connection and command
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Define SQL query with parameters
                    string query = "INSERT INTO vol (Name, Qfood, Category, Address, Mobile) VALUES (@Name, @Qfood, @Category, @Address, @Mobile)";

                    // Create SQL command
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command
                        command.Parameters.AddWithValue("@Name", txtName.Text);
                        command.Parameters.AddWithValue("@Qfood", txtQuantity.Text);
                        command.Parameters.AddWithValue("@Category", txtcat.Text);
                        command.Parameters.AddWithValue("@Address", txtAddress.Text);
                        command.Parameters.AddWithValue("@Mobile", txtMobile.Text);

                        // Open connection and execute the command
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Redirect to a thank you page or any other page
                Response.Redirect("donate.aspx");
            }
        }
    }
}
    