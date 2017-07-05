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
    public partial class WebForm1 : System.Web.UI.Page
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
            Session["emails"] = youxiang.Text;
            Session["addresss"] = dagaizhuzhi1.SelectedItem.Text + dagaizhuzhi2.SelectedItem.Text;
                       
            Response.Redirect("ShowParentInfor.aspx");
            
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }       
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            psw1.Attributes["value"] = psw1.Text;
            psw2.Attributes["value"] = psw2.Text;
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\VS项目\导师制-家教网\WebApplication2\App_Data\ParentInfm.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("select count(*) from ParTab where PHONENUM=@phonenums ", conn);
                cmd.Parameters.Add("@phonenums", SqlDbType.NChar);
                cmd.Parameters[0].Value = nindeshouji.Text;
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

        protected void nindechenghu_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dagaizhuzhi1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[][] Dagaizhuzhi = new string[14][];
            Dagaizhuzhi[0] = new string[10] { "积玉桥", "司门口", "武昌火车站", "中南路", "首义路", "东亭", "武泰闸", "武昌周边", "小东门", "杨园" };
            Dagaizhuzhi[1] = new string[8] { "关山", "街道口", "广埠屯", "鲁港", "洪山周边", "光谷", "陈家湾", "珞狮南路" };
            Dagaizhuzhi[2] = new string[0] { };
            Dagaizhuzhi[3] = new string[7] { "建设二路", "建设七路", "和平大道", "友谊大道", "余家头", "冶金大道", "青山周边" };
            Dagaizhuzhi[4] = new string[0] { };
            Dagaizhuzhi[5] = new string[10] { "王家湾", "月湖", "鹦鹉", "蔡甸", "七家庙", "钟家村", "晴川", "建港", "升官渡", "汉阳周边" };
            Dagaizhuzhi[6] = new string[8] { "江汉", "新华路", "西北湖", "常青", "北湖", "万松园", "杨汉湖", "江汉周边" };
            Dagaizhuzhi[7] = new string[7] { "汉正街", "宝丰", "宗关", "古田", "崇仁路", "武胜路", "硚口周边" };
            Dagaizhuzhi[8] = new string[4] { "常青花园", "金银湖", "将军路", "吴家山" };
            Dagaizhuzhi[9] = new string[8] { "盘龙山", "汉口北", "前川", "横店", "罗汉寺", "六指点", "天河", "黄陂周边" };
            Dagaizhuzhi[10] = new string[0] { };
            Dagaizhuzhi[11] = new string[10] { "后湖", "百步亭", "竹叶山花桥", "二七路", "三阳路", "永清街", "球场街", "江汉路", "建设大道", "汉口火车站" };
            Dagaizhuzhi[12] = new string[0] { };
            dagaizhuzhi2.Items.Clear();
            int index = int.Parse(dagaizhuzhi1.SelectedValue);
            for (int i = 0; i < Dagaizhuzhi[index].Length; i++)
            {
                dagaizhuzhi2.Items.Add(Dagaizhuzhi[index][i]);
            }

        }

        protected void jc_Click(object sender, EventArgs e)
        {

        }
    }
}