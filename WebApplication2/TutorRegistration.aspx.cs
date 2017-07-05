using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.psw1.Attributes.Add("value", Request["psw1"]);//记住密码
            this.psw2.Attributes.Add("value", Request["psw2"]);//
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            psw1.Attributes["value"] = psw1.Text;
            psw2.Attributes["value"] = psw2.Text;
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\TutorInf.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("select count(*) from TutorTable where USERN=@use ", conn);
                cmd.Parameters.Add("@use", SqlDbType.NChar);
                cmd.Parameters[0].Value = username.Text;
                int count = (int)cmd.ExecuteScalar();
                conn.Close();
                if (count > 0)
                    args.IsValid = false;
                else
                    args.IsValid = true;
            }
            catch
            {
                args.IsValid = false;
                Response.Write("连接失败");
            }


        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Session["use"] = username.Text;
            Session["psw"] = psw1.Text;
            Session["EMail"] = email.Text;
            Session["phone"] = phonenum.Text;
            Session["shenfen"] = xuanzeshenfen.SelectedValue;         
            Response.Redirect("FirstTutorInformation.aspx");
   
        }

        protected void xuanzeshenfen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}