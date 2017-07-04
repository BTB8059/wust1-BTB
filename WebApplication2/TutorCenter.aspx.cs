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
    public partial class 四家教机构_个人中心 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {        
            String user = "", status = "",call="",name="",title="";
            string ans = "";
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\TutorInf.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataReader dr = null;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from TutorTable where USERN=@use ", conn);
                cmd.Parameters.Add("use", SqlDbType.NChar);
                cmd.Parameters[0].Value = Session["user"];
                dr = cmd.ExecuteReader();
                              
                if (dr.Read())
                {
                    user = "用户名:" + dr[0].ToString();
                    status = "您的身份:" + dr[4].ToString();
                    call = "您的称呼:" + dr[5].ToString();
                    name = "您的姓名:" + dr[6].ToString();
                    title = "个性标题:" + dr[9].ToString();
                    TutInf.Text = dr[0].ToString();                   
                }
                ans = user+"<br/>" + status + "<br/>" + call + "<br/>" + name + "<br/>" + title + "<br/>";
                TutInf.Text = ans;
            }
            catch
            {
                TutInf.Text = "操作失败";
            }
            finally
            {
                if (dr != null)
                    dr.Close();
                conn.Close();
            }

           
        }
    }
}