using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Scripts
{
    public partial class 发布家教信息 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                Response.Redirect("补充学员信息.aspx");
        }
    }
}