<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Scripts.登录界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 190px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            margin-left: 35px;
        }
             
          #bg{
                 background-color:peachpuff;
              }
     
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            width: 190px;
            height: 31px;
        }
     
    </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
    
    <div>
                       
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
    </div>

        <br />
        <br />
        <br />
        <div style="float:left">
            <img src="Images/15.jpg" height="500px" width="500px" />
        </div>
        <br />
        <div style="float:left;padding-left:200px;">
    <div align="center">
        <asp:Label ID="label2" runat="server" ForeColor="YellowGreen" Font-Size="35px" Text="非家长登录"></asp:Label>
    </div>
    <br />
    <br />
    <br />
        <table align="center">
            <tr>
                <td align="right">用户名</td>
                <td align="left" class="auto-style1"><asp:TextBox ID="TutUser" runat="server" Height="21px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">密码</td>
                <td align="left" class="auto-style5"><asp:TextBox ID="TutPsw" runat="server"  TextMode="Password" Height="21px" ></asp:TextBox></td>
            </tr>
            <tr>
                 <td align="left"><asp:Label ID="TutLabel" runat="server"></asp:Label></td>
             </tr>
            <tr>
                <td align="right">还没有注册</td>
                <td align="left" class="auto-style1"><asp:LinkButton ID="TutReg" Text="点击注册" runat="server" OnClick="TutReg_Click" ></asp:LinkButton></td>
            </tr>
            <tr>
               
                <td align="right"><asp:Button ID="TutLog" runat="server" Text="登录" BackColor="YellowGreen" Width="97px" Height="34px"  CssClass="auto-style3" OnClick="TutLog_Click"/></td>
            </tr>
        </table>
             <br />
             <br />
             <br />
             <br />
       <div align="center">
      <asp:Label ID="label1" runat="server" ForeColor="YellowGreen" Font-Size="35px" Text="家长登录"></asp:Label>
      </div>
      <br />
      <br />
      <br />
        <table align="center">
              <tr>
                  <td align="right">手机号</td>
                  <td align="left"><asp:TextBox ID="ParPhone" runat="server" Width="135px" Height="20px"></asp:TextBox></td>
              </tr>
              <tr>
                  <td align="right">密码</td>
                  <td align="left"><asp:TextBox ID="ParPsw" runat="server" TextMode="Password" Width="133px" Height="23px" ></asp:TextBox></td>
              </tr>
              <tr>
                 <td align="left"><asp:Label ID="ParLabel" runat="server"></asp:Label></td>
              </tr>
              <tr>
                  <td align="right">还没有注册</td>
                  <td align="left"><asp:LinkButton ID="ParReg" Text="点击注册" runat="server" OnClick="ParReg_Click" ></asp:LinkButton></td>
              </tr>
              <tr>
                  <td align="right"><asp:Button ID="ParLog" runat="server" Text="登录" BackColor="YellowGreen" CssClass="auto-style2" Height="34px" Width="99px" OnClick="ParLog_Click" /></td>
              </tr>
        </table>
            </div>
    </form>
</body>
</html>
