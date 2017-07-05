<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReleaseTutorInformation.aspx.cs" Inherits="WebApplication2.Scripts.发布家教信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .auto-style2 {
            height: 323px;
            width: 1273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:Label ID="fabuzhaopinxinxi" runat="server" ForeColor="Orange"  Font-Size="25px" 
            Text="发布招聘信息：" ></asp:Label> 
        <br />
        <asp:Label ID="gerenzhongxin" runat="server" ForeColor="red"  Font-Size="20px" 
            Text="请补充以下信息便于为您推荐合适家教*为必填" ></asp:Label> 
        <br />

    
    </div>
    <br />
    <div>
    <table style="align-content:center;" class="auto-style2">
     <tr>
        <td align="right" class="auto-style4">*家教性别：</td>
        <td align="left" class="auto-style1"><asp:RadioButtonList ID="jiajiao_sexs" runat="server"  AutoPostBack="true" 
          RepeatColumns="3" RepeatDirection="Horizontal"><asp:ListItem>不限</asp:ListItem> <asp:ListItem>男</asp:ListItem><asp:ListItem>女</asp:ListItem></asp:RadioButtonList></td>      
     </tr>
     <tr>
         <td align="right">*家教要求：</td>
         <td align="left" class="auto-style1"><asp:RadioButtonList ID="jiajiaoyaoqiu" runat="server" 
                    RepeatColumns ="2" RepeatDirection="Horizontal" > 
                    <asp:ListItem>不限</asp:ListItem>
                    <asp:ListItem>大学生家教</asp:ListItem>
                    <asp:ListItem>专职/机构家教</asp:ListItem>
                    <asp:ListItem>在职教师</asp:ListItem>
                    </asp:RadioButtonList></td>
     </tr>
    <tr>
        <td align="right">*所在年级：</td>
        <td align="left" class="auto-style1"><asp:DropDownList ID="DropDownList_suozainianji" AutoPostBack="true" runat="server"  >
                 <asp:ListItem Value="0">请选择</asp:ListItem>
                 <asp:ListItem Value="1">学前阶段</asp:ListItem>
                 <asp:ListItem Value="2">小学一年级</asp:ListItem>
                 <asp:ListItem Value="3">小学二年级</asp:ListItem>
                 <asp:ListItem Value="4">小学三年级</asp:ListItem>
                 <asp:ListItem Value="5">小学四年级</asp:ListItem>
                 <asp:ListItem Value="6">小学五年级</asp:ListItem>
                 <asp:ListItem Value="7">小学六年级</asp:ListItem>
                 <asp:ListItem Value="8">初中一年级</asp:ListItem>
                 <asp:ListItem Value="9">初中二年级</asp:ListItem>
                 <asp:ListItem Value="10">初中三年级</asp:ListItem>
                 <asp:ListItem Value="11">高中一年级</asp:ListItem>
                 <asp:ListItem Value="12">高中二年级</asp:ListItem>
                 <asp:ListItem Value="13">高中三年级</asp:ListItem>
                 <asp:ListItem Value="14">大学</asp:ListItem>
                 <asp:ListItem Value="15">以工作</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td align="right">*课时费：</td>
        <td align="left" class="auto-style1"><asp:RadioButtonList ID="keshifei" runat="server"  AutoPostBack="true" 
          RepeatColumns="2" RepeatDirection="Horizontal"><asp:ListItem>面议</asp:ListItem> <asp:ListItem>选择范围</asp:ListItem></asp:RadioButtonList></td>      
        <td align="left"><asp:DropDownList ID="DropDownList_keshifei" AutoPostBack="true" runat="server"  >
                 <asp:ListItem Value="0">20元</asp:ListItem>
                 <asp:ListItem Value="1">30元</asp:ListItem>
                 <asp:ListItem Value="2">40元</asp:ListItem>
                 <asp:ListItem Value="3">50元</asp:ListItem>
                 <asp:ListItem Value="4">60元</asp:ListItem>
                 <asp:ListItem Value="5">70元</asp:ListItem>
                 <asp:ListItem Value="6">80元</asp:ListItem>
                 <asp:ListItem Value="7">90元</asp:ListItem>
                 <asp:ListItem Value="8">100元</asp:ListItem>
                 <asp:ListItem Value="9">120元</asp:ListItem>
                 <asp:ListItem Value="10">140元</asp:ListItem>
                 <asp:ListItem Value="11">160元</asp:ListItem>
                 <asp:ListItem Value="12">180元</asp:ListItem>
                 <asp:ListItem Value="13">200元</asp:ListItem>
                 <asp:ListItem Value="14">240元</asp:ListItem>
                 <asp:ListItem Value="15">280元</asp:ListItem>
                 <asp:ListItem Value="16">320</asp:ListItem>
                 <asp:ListItem Value="17">360元</asp:ListItem>
                 <asp:ListItem Value="18">400元</asp:ListItem>
                 </asp:DropDownList></td>
       
    </tr>
    <tr>
        <td align="right" >*聘请家教人数：</td>
        <td align="left" class="auto-style1"><asp:DropDownList ID="DropDownList_pinqingjiajiaorenshu" AutoPostBack="true" runat="server"  >
                 <asp:ListItem Value="0">请选择</asp:ListItem>
                 <asp:ListItem Value="1">一人</asp:ListItem>
                 <asp:ListItem Value="2">二人</asp:ListItem>
                 <asp:ListItem Value="3">三人</asp:ListItem>
                 <asp:ListItem Value="4">四人</asp:ListItem>
                 <asp:ListItem Value="4">四人以上</asp:ListItem></asp:DropDownList>                         
            </td>
    </tr>
    <tr>
        <td align="right" >*每周授课次数：</td>
        <td align="left" class="auto-style1"><asp:DropDownList ID="DropDownList_meizhoushoukecishu" AutoPostBack="true" runat="server"  >
                 <asp:ListItem Value="0">请选择</asp:ListItem>
                 <asp:ListItem Value="1">一次</asp:ListItem>
                 <asp:ListItem Value="2">两次</asp:ListItem>
                 <asp:ListItem Value="3">三次</asp:ListItem>
                 <asp:ListItem Value="4">四次</asp:ListItem>
                 <asp:ListItem Value="5">五次</asp:ListItem>
                 <asp:ListItem Value="6">六次</asp:ListItem>
                 <asp:ListItem Value="7">七次</asp:ListItem></asp:DropDownList>                          
            </td>
    </tr>
    <tr>
        <td align="right">*大致位置：</td>
        <td align="left" class="auto-style1"><asp:TextBox ID="dazhiweizhi" runat="server" Rows="10"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="right">*目标奖金：</td>
        <td align="left" class="auto-style1"><asp:RadioButtonList ID="mubiaojiangjin" runat="server"  AutoPostBack="true" 
          RepeatColumns="3" RepeatDirection="Horizontal"><asp:ListItem>无</asp:ListItem><asp:ListItem>输入范围</asp:ListItem></asp:RadioButtonList></td>
        <td align="left"><asp:TextBox ID="mubiaojiangjin_textbox" runat="server" Rows="10"></asp:TextBox>元(达到约定教学目标给家教的奖金)</td>   
     </tr>
     <tr>
         <td align="right">*教育阶段：</td>
         <td align="left" class="auto-style1"><asp:DropDownList ID="jiaoyujieduan_DropDownList" AutoPostBack="true" runat="server"  >
                 <asp:ListItem Value="0">请选择教育阶段</asp:ListItem>
                 <asp:ListItem Value="1">学前教育</asp:ListItem>
                 <asp:ListItem Value="2">小学家教</asp:ListItem>
                 <asp:ListItem Value="3">初中家教</asp:ListItem>
                 <asp:ListItem Value="4">高中家教</asp:ListItem>
                 <asp:ListItem Value="5">外语家教</asp:ListItem>
                 <asp:ListItem Value="6">特长家教</asp:ListItem>
                 <asp:ListItem Value="7">计算机家教</asp:ListItem>
                 <asp:ListItem Value="8">大学辅导</asp:ListItem>
                 <asp:ListItem Value="9">国际课程</asp:ListItem></asp:DropDownList></td>     
     </tr>
     <tr>
         <td align="right">*详细要求：</td>
         <td align="left" class="auto-style1"><asp:TextBox ID="xiangxiyaoqiu_textbox" runat="server" Rows="10" Height="66px" Width="193px"></asp:TextBox></td>
     </tr>
 
    </table>
    </div> 
    <div align="center">
        <asp:LinkButton ID="linkbutton1" runat="server" Text="下一步" OnClick="linkbutton1_Click" ></asp:LinkButton>
         
    </div>
    </form>
</body>
</html>
