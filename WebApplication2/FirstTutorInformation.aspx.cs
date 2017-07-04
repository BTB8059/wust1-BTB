using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Scripts
{
    public partial class 二填写个人家教信息 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList_kaibanshijian_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void sexs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void nideshenfen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
        protected void DropDownList_shoukeshijian_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList_jiaqishukeshezhi_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      


        protected void nindeshenfen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void xiayibu_Click(object sender, EventArgs e)
        {
            Session["calls"] = nindechenghu.Text;//您的称呼
            Session["names"] = zhenshixingming.Text;//真实姓名
            Session["degrees"] = nindeshenfen.SelectedValue;//您的身份
            Session["sex"] = sexs.SelectedValue;//性别
            Session["titles"] = gexingbiaoti.Text;//个性标题
            Session["TeachMeths"] = RadioButtonList_shoukefangshi.SelectedValue;//授课方式
            Session["TeachTimes"] = DropDownList_shoukeshijian.SelectedItem.Text;//授课时间
            Session["TeachSets"] = RadioButtonList_jiaqishukeshezhi.SelectedValue;//假期授课设置
            Session["TeachTimeBZs"] = shukeshijianbeizhu.Text;//授课时间备注
            Response.Redirect("SecondTutor");
        }
    }
}