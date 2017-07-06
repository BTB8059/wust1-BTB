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
    public partial class 登录界面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
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
                    Session["username"] = TutUser.Text;
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

        protected void ParLog_Click(object sender, EventArgs e)
        {
            Session["phone"] = ParPhone.Text;
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\ParentInfm.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from ParTab where PHONENUM=@phonenums ", conn);
                cmd.Parameters.Add("@phonenums", SqlDbType.NChar);
                cmd.Parameters.Add("pas", SqlDbType.NChar);
                cmd.Parameters[0].Value = ParPhone.Text;
                cmd.Parameters[1].Value = ParPsw.Text;
                int count = (int)cmd.ExecuteScalar();
                conn.Close();
                if (count == 1)
                {
                    Session["phonenums"] = ParPhone.Text;
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

        protected void TutReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("TutorRegistration.aspx");
        }

        protected void ParReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParentRegistration.aspx");
        }
    }
}