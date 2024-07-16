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
    public partial class ngo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ad where username='" + TextBox1.Text + "' and  password='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                // Session["id"] = TextBox1.Text;
                string script = "alert('Ngo Login Successfully');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                Response.Redirect("donate.aspx");
                // Session.RemoveAll();
            }
            else if (TextBox1.Text == "")
            {
                string script = "alert('Please Enter Ur Username');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

            }
            else if (TextBox2.Text == "")
            {
                string script = "alert('Please Enter Password');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
            else
            {

                string script = "alert('Invalid Username and Password');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }
    }
