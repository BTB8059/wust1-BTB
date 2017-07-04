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
    public partial class 家长个人中心 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = "", status = "", call = "";
            string ans = "";
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\ParentInfm.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataReader dr = null;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from ParTab where PHONENUM=@phonenums ", conn);
                cmd.Parameters.Add("@phonenums", SqlDbType.NChar);
                cmd.Parameters[0].Value = Session["phone"];              
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    user = "手机号:" + dr[0].ToString();
                    status = "您的身份:" + "家长";
                    call = "您的称呼:" + dr[1].ToString();
                    ParInf.Text = dr[0].ToString();
                }
                ans = user + "<br/>" + status + "<br/>" + call + "<br/>";
                ParInf.Text = ans;
            }
            catch
            {
                ParInf.Text = "操作失败";
            }
            finally
            {
                if (dr != null)
                    dr.Close();
                conn.Close();
            }


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {


        }

        protected void check_Click(object sender, EventArgs e)
        {
            Response.Redirect("check2.aspx");
        }

        protected void checktime_Click(object sender, EventArgs e)
        {
            string regidate =DateTime.Now.ToLongDateString();
            Session["家教信息时间"] = "";
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\TutorInf.mdf;Integrated Security=True";

            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("select * from TutorTable order by time DESC ", conn); 
                cmd.Parameters.Add("@time", SqlDbType.NChar);
          
                cmd.Parameters[0].Value =regidate.ToString();
               
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Session["家教信息时间"]+= "教员编号： " + dr[0].ToString() + "<br/>" + "姓名：" + dr[6].ToString() + "<br/>" + "性别：" + dr[8].ToString() + "<br/>" + "地址：" + dr[16].ToString() + "<br/>" + "联系电话：" + dr[3].ToString() + "<br/>" + "邮箱：" + dr[2].ToString() + "<br/>" + "机构：" + dr[4].ToString() + "<br/>" + "教授程度：" + dr[7].ToString() + "<br/>" + "教龄：" + dr[11].ToString() + "<br/>" + "教课时间：" + dr[12].ToString() + "    " + dr[13].ToString() + "<br/>" + "教课薪资：" + dr[14].ToString() + "<br/>" + "授课区域：" + dr[15].ToString() + "<br/>" + "教授科目：" + dr[17].ToString() + "<br/>" + "自我评价：" + dr[18].ToString() + "<br/>" + "个性签名：" + dr[9].ToString() + "<br/>" +"注册时间："+dr[19].ToString()+"<br/>" + "<br/>"+"<hr/>";

                }
                Response.Redirect("ShowTimeCheck.aspx");

                conn.Close();

            }
            catch (Exception ee)
            {
                Response.Write(ee.Message);
                Response.Write("连接失败！");
            }
        }
    }
}