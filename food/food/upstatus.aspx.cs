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
    public partial class upstatus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into up(Name,Mobile,Description) values('" + txtName.Text + "','" + txtMobile.Text + "','" + txtDescription.Text + "')", con);


            con.Open();

            int i = cmd.ExecuteNonQuery();
            if (txtName.Text == "")
            {
                string script = "alert('Please Enter Your Name');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
            else if (txtMobile.Text == "")
            {
                string script = "alert('Please Entre Mobile');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
            else if (txtDescription.Text == "")
            {
                string script = "alert('Please Enter Your Status');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
           
            else if (i == 1)
            {

                string script = "alert('Status Updated successfully');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                Response.Redirect("donate.aspx");
            }

            else
            {
                con.Close();
                string script = "alert('Status not Updated');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }



            txtName.Text = "";
            txtMobile.Text = "";
            txtDescription.Text = "";
            
        }
    }
    }
