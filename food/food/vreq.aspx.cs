using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace food
{
    public partial class vreq : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!IsPostBack)
                {
                    BindGrid();
                }
            }
            private void BindGrid()
            {

                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select * from req";
                        cmd.Connection = con;
                        con.Open();
                        GridView1.DataSource = cmd.ExecuteReader();
                        GridView1.DataBind();
                        con.Close();
                    }
                }
            }

            protected void DeleteFile(object sender, EventArgs e)
            {

                con.Open();
                string[] commandArgs = (sender as LinkButton).CommandArgument.ToString().Split(new char[] { ',' });
                string Id = commandArgs[0];
                string fpath = Server.MapPath(commandArgs[0]);

                SqlCommand cmd = new SqlCommand("DELETE FROM req where Id='" + Id + "'", con);
                cmd.ExecuteReader();
                con.Close();

                File.Delete(fpath);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }
    }
