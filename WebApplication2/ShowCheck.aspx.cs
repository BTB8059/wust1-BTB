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
    public partial class ShowCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Response.Write(Session["家教信息"].ToString());
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //string strScript = "<script language='javascript'>";
            //strScript += "alert(\"" + sender + "\");";
            //strScript += "window.location.herf='" + e + "':";
            //strScript += "</script>";
            //alert("");
            //Response.Write(strScript);
            Response.Write("<script language=javascript>alert('恭喜您，你已成功找到合适的教员老师啦！赶紧去联系他（她）吧！');</" + "script>");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("check2.aspx");
        }

        protected void goback_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParentCenter.aspx");
        }
    }
}