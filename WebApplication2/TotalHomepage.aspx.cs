using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication2.Scripts
{
    public partial class 总首页 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "TotalHomepage.aspx";
            tim.Text = "<font size='3'>" + DateTime.Now.ToLongDateString() + "</font>";
            
            hh.Text = "<font size='3'>" + "晴"+ "</font>";
        }
        

        protected void ParLog_Click(object sender, EventArgs e)
        {

            Session["phone"] = ParPhone.Text;

            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\ParentInfm.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from ParTab where phonenum=@phonenum ", conn);
                cmd.Parameters.Add("@phonenum", SqlDbType.NChar);
                cmd.Parameters.Add("pas", SqlDbType.NChar);
                cmd.Parameters[0].Value = ParPhone.Text;
                cmd.Parameters[1].Value = ParPsw.Text;
                int count = (int)cmd.ExecuteScalar();
                conn.Close();
                if (count == 1)
                {
                    Response.Redirect("ParentCenter.aspx");
                }
                else
                {
                    ParLabel.Text = "用户名或密码不对";
                }
            }
            catch
            {
                Response.Write("连接失败！");
            }

        }

        protected void ParReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParentRegistration.aspx");
        }

        protected void TutLog_Click(object sender, EventArgs e)
        {
            Session["user"] = TutUser.Text;
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\TutorInf.mdf;Integrated Security=True";

            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("select count(*) from TutorTable where USERN=@use ", conn);
                cmd.Parameters.Add("use", SqlDbType.NChar);
                cmd.Parameters.Add("psw", SqlDbType.NChar);
                cmd.Parameters[0].Value = TutUser.Text;
                cmd.Parameters[1].Value = TutPsw.Text;
                int count = (int)cmd.ExecuteScalar();
                conn.Close();
                if (count == 1)
                {
                    Response.Redirect("TutorCenter.aspx");
                }
                else
                {
                    TutLabel.Text = "用户名或密码不对";

                }
            }
            catch
            {
                Response.Write("连接失败！");
            }

        }

        protected void TutReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("TutorRegistration.aspx");
        }

        protected void guanliyuan_Click(object sender, EventArgs e)
        {
            Response.Redirect("GLfirstpage.aspx");
        }
    }
}