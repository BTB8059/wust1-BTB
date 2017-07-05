using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Scripts
{
    public partial class 三个人家教 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void jiaoshouxueke1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[][] Jiaoshiuxueke = new string[7][];
            Jiaoshiuxueke[0] = new string[6] { "幼儿陪玩", "幼儿托管", "少儿英语", "幼儿园", "智力开发", "学前教育"};
            Jiaoshiuxueke[1] = new string[4] { "小学语文", "小学英语", "小学数学", "小学奥数" };
            Jiaoshiuxueke[2] = new string[5] { "初中语文", "初中英语", "初中数学", "初中文综", "初中理综" };
            Jiaoshiuxueke[3] = new string[5] { "高中语文", "高中数学", "高中英语", "高中理综", "高中文综" };
            Jiaoshiuxueke[4] = new string[10]{ "英语口语", "新概念英语", "剑桥英语", "托福", "雅思", "GRE","日语","德语","法语","韩语" };
            Jiaoshiuxueke[5] = new string[6] { "钢琴", "素描", "吉他", "声乐", "油画", "艺考" };
            Jiaoshiuxueke[6] = new string[4] { "高等数学", "大学英语", "考研政治", "出国留学" };
            jiaoshouxueke2.Items.Clear();
            int index = int.Parse(jiaoshouxueke1.SelectedValue);
            for (int i = 0; i < Jiaoshiuxueke[index].Length; i++)
            {
                jiaoshouxueke2.Items.Add(Jiaoshiuxueke[index][i]);
            }

        }

        protected void shukequyu1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[][] Shukequyu = new string[14][];
            Shukequyu[0] = new string[10] { "积玉桥", "司门口", "武昌火车站", "中南路", "首义路", "东亭", "武泰闸", "武昌周边", "小东门", "杨园" };
            Shukequyu[1] = new string[8] { "关山", "街道口", "广埠屯", "鲁港", "洪山周边", "光谷", "陈家湾", "珞狮南路" };
            Shukequyu[2] = new string[0] {  };
            Shukequyu[3] = new string[7] { "建设二路", "建设七路", "和平大道", "友谊大道", "余家头", "冶金大道", "青山周边"};
            Shukequyu[4] = new string[0] {  };
            Shukequyu[5] = new string[10] { "王家湾", "月湖", "鹦鹉", "蔡甸", "七家庙", "钟家村", "晴川", "建港", "升官渡", "汉阳周边" };
            Shukequyu[6] = new string[8] { "江汉", "新华路", "西北湖", "常青", "北湖", "万松园", "杨汉湖", "江汉周边" };
            Shukequyu[7] = new string[7] { "汉正街", "宝丰", "宗关", "古田", "崇仁路", "武胜路", "硚口周边" };
            Shukequyu[8] = new string[4] { "常青花园", "金银湖", "将军路", "吴家山"};
            Shukequyu[9] = new string[8] { "盘龙山", "汉口北", "前川", "横店", "罗汉寺", "六指点", "天河", "黄陂周边"};
            Shukequyu[10] = new string[0] { };
            Shukequyu[11] = new string[10] { "后湖", "百步亭", "竹叶山花桥", "二七路", "三阳路", "永清街", "球场街", "江汉路", "建设大道", "汉口火车站" };
            Shukequyu[12] = new string[0] { };
            shukequyu2.Items.Clear();
            int index = int.Parse(shukequyu1.SelectedValue);
            for (int i = 0; i < Shukequyu[index].Length; i++)
            {
                shukequyu2.Items.Add(Shukequyu[index][i]);
            }


        }

        protected void xiayibu_Click(object sender, EventArgs e)
        {
            Session["TeachCosts"] = DropDownList_keshifei.SelectedItem.Text;//课时费

            Session["TeachAreas"] = shukequyu1.SelectedItem.Text + shukequyu2.SelectedItem.Text;//授课区域

            Session["Addresss"] = DropDownList_dagaizhuzhi.SelectedItem.Text;///大概住址

            Session["TeachSubjects"] = jiaoshouxueke1.SelectedItem.Text + jiaoshouxueke2.SelectedItem.Text;//教授学科
            Session["PersonInfors"] = gerenjieshao.Text;//个人介绍
            Response.Redirect("ShowTutor.aspx");
        }
    }
}