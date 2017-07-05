using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ShowTimeCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["家教信息时间"].ToString());
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript>alert('恭喜您，你已成功找到合适的教员老师啦！赶紧去联系他（她）吧！');</" + "script>");

        }

        
        protected void btnclick(object sender, EventArgs e)
        {
            Response.Redirect("ParentCenter.aspx");
        }
    }
}