using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ShowParentInfor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                Response.Write("注册成功,5秒钟后将为您跳转到登录界面" + "<br/>");

                Response.AddHeader("refresh", "5;url='Login.aspx'");
            }
            catch
            {
                Response.Write("注册不成功," + "5秒钟后将会为您跳转到注册界面" + "<br/>");
                Response.AddHeader("refresh", "5;url='ParentRegistration.aspx'");


            }

        }
        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}