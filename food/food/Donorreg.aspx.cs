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
    public partial class Donorreg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username = TextBox1.Text;
            string Password = TextBox2.Text;
            string Email = TextBox3.Text;

            // Check if user already exists
            if (IsUserExists(Username))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User already exists!');", true);
            }
            else
            {
                // If user does not exist, save the user to the database
                SaveUserToDatabase(Username, Password, Email);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User registered successfully!');", true);
            }
        }

        private bool IsUserExists(string Username)
        {
            // Check if the user exists in the database
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            string query = "SELECT COUNT(*) FROM donreg WHERE Username = @Username";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString)) 

            {
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Username", Username);
                    con.Open();
                    int count = (int)command.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        private void SaveUserToDatabase(string username, string password, string email)
        {
            //string connectionString = "ConnectionString";
            string query = "INSERT INTO donreg (Username, Password, Email) VALUES (@Username, @Password, @Email)";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}


    
