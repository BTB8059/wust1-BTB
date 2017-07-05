using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class GLfirstpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void denglu_Click(object sender, EventArgs e)
        {
            //PSD.Attributes["value"] = PSD.Text;
            //string connStr = @"Data Source=desktop-vr3mivn\sqlexpress;Initial Catalog=GL;Integrated Security=True";
            //SqlConnection conn = new SqlConnection(connStr);
            //try
            //{
            //    conn.Open();
            //    SqlCommand cmd = new SqlCommand("select count(*) from GLY where name=@name and psd=@psd", conn);
            //    cmd.Parameters.Add("@name", SqlDbType.NChar, 20);
            //    cmd.Parameters.Add("@psd", SqlDbType.NChar, 20);
            //    cmd.Parameters[0].Value = Name.Text;
            //    cmd.Parameters[1].Value = PSD.Text;
            //    int count = (int)cmd.ExecuteScalar();
            //    conn.Close();
            //    if (count == 1)
            //    {
            //        Session["name"] = Name.Text;
            //        user.Visible = false;
            //        Response.Redirect("GLindex.aspx");
            //    }

            //    else
            //        user.Visible = true;
            //}
            //catch
            //{
            //    user.Visible = true;
            //}
        }

        protected void zhuce_Click(object sender, EventArgs e)
        {
            Response.Redirect("GLY_Rgister.aspx");
        }
    }
}