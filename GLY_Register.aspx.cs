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
    public partial class GLY_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.psw1.Attributes.Add("value", Request["psw1"]);//记住密码
            this.psw2.Attributes.Add("value", Request["psw2"]);//
        }

        protected void zhuce_Click(object sender, EventArgs e)
        {
            Session["phonenums"] = nindeshouji.Text;
            Session["calls"] = nindechenghu.Text;
            Session["psws"] = psw1.Text;
            Session["sexs"] = xingbie.SelectedValue;
         
            Response.Redirect("ShowGLYInf.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
        }
    }
}