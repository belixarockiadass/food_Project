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
    public partial class req : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    // Open the database connection
                    con.Open();
                }
                catch (Exception ex)
                {
                    // Handle connection errors
                    Response.Write("Error: " + ex.Message);
                }
                finally
                {
                    // Close the connection
                    con.Close();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string address = txtAddress.Text.Trim();
            string email = txtEmail.Text.Trim();
            string description = txtDescription.Text.Trim();

            // Check if user already exists
            bool userExists = CheckIfUserExists(name, email);

            if (userExists)
            {
                // Display notification
                ScriptManager.RegisterStartupScript(this, GetType(), "UserExistsAlert", "alert('User with the same name or email already exists.');", true);
            }
            else
            {
                // Insert new user into the database
                InsertUserIntoDatabase(name, mobile, address, email, description);
                // Optionally, you can display a success message
                ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert", "alert('Request submitted successfully.');", true);
            }
        }

        private bool CheckIfUserExists(string name, string email)
        {
            // SQL query to check if a user with the same name or email already exists
            string query = "SELECT COUNT(*) FROM req WHERE Name = @Name OR Email = @Email";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@Name", name);
            command.Parameters.AddWithValue("@Email", email);

            int count = 0;

            try
            {
                // Open the database connection
                con.Open();
                // Execute the query
                count = (int)command.ExecuteScalar();
            }
            catch (Exception ex)
            {
                // Handle query execution errors
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                // Close the connection
                con.Close();
            }

            // Return true if user exists, false otherwise
            return count > 0;
        }

        private void InsertUserIntoDatabase(string name, string mobile, string address, string email, string description)
        {
            // SQL query to insert user details into the database
            string query = "INSERT INTO req (Name, Mobile, Address, Email, [Desc]) VALUES (@Name, @Mobile, @Address, @Email, @Desc)";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@Name", name);
            command.Parameters.AddWithValue("@Mobile", mobile);
            command.Parameters.AddWithValue("@Address", address);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Desc", description);

            try
            {
                // Open the database connection
                con.Open();
                // Execute the query
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                // Handle query execution errors
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                // Close the connection
                con.Close();
            }
        }
    }
}
