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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // You can add any initialization logic here
            }
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Dname = TextBox1.Text;
            string Category = DropDownList1.Text;
            string Date = TextBox2.Text;
            string Person = TextBox3.Text;
            string Cpmobile = TextBox4.Text;
            string Location = TextBox5.Text;
            string Qfood = TextBox6.Text;
            string Desc = TextBox7.Text;

            // Save data to the database
            // string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                string query = "INSERT INTO donfood (Dname, Category, Date, Person, Cpmobile, Location, Qfood, [Desc]) " +
                               "VALUES (@Dname, @Category, @Date, @Person, @Cpmobile, @Location, @Qfood, @Desc)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Dname", TextBox1.Text);
                command.Parameters.AddWithValue("@Category", DropDownList1.Text);
                command.Parameters.AddWithValue("@Date", TextBox2.Text);
                command.Parameters.AddWithValue("@Person", TextBox3.Text);
                command.Parameters.AddWithValue("@Cpmobile", TextBox4.Text);
                command.Parameters.AddWithValue("@Location", TextBox5.Text);
                command.Parameters.AddWithValue("@Qfood", TextBox6.Text);
                command.Parameters.AddWithValue("@Desc", TextBox7.Text);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();

                if (rowsAffected > 0)
                {
                    // Data inserted successfully
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Food Donated Successfully!');", true);
                    Response.Redirect("firsthome.aspx");
                    // You can clear the form here if needed
                    ClearForm();
                }
                else
                {
                    // Failed to insert data
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Food not Donated!');", true);

                }
            }
        }

        private void ClearForm()
        {
            TextBox1.Text = "";
            DropDownList1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    }
}
