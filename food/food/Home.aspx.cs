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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ad values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (TextBox1.Text == "")
            {
                string script = "alert('Please Enter UserName');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

            }
            else if (TextBox2.Text == "")
            {
                string script = "alert('Please Enter your Password');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
           

            else if (i == 1)
            {
                string script = "alert('Reg successfully ');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                string script = "alert('Request not successfully');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }

            TextBox1.Text = "";
            TextBox2.Text = "";
            


        }
    }
}