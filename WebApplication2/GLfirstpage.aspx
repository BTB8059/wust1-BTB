<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GLfirstpage.aspx.cs" Inherits="WebApplication2.GLfirstpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎管理员</title>
    <style type="text/css">
        #bj{
            background-color:seagreen;
            width:30%;
            margin-left:400px;
            height:230px;
        }
        
   
 #bg{
    
   background-color:peachpuff;

 }
     
    </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
    <div id="bj">
      
    <div>
                       
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
    </div>

       <table align="center" width:30%; style="height: 199px; width: 366px">
        <caption>欢迎管理员</caption>
              
        <tr>
           
       <td class="auto-style1">
        <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
         
       </td>
            <td class="auto-style3">
                <asp:TextBox ID="Name" runat="server" Width="185px" Height="26px"></asp:TextBox>
                </td>
            <td class="auto-style2">
                  <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="密码"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="PSD" TextMode="Password" runat="server" Height="26px" Width="185px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"> </td>
            <td class="auto-style5">
                 <asp:Button ID="denglu" runat="server" Text="登录" Height="25px" OnClick="denglu_Click" /> &nbsp;
            
           &nbsp;&nbsp;
                <asp:Button ID="zhuce" runat="server" Text="注册" OnClick="zhuce_Click" />
            </td>
        </tr>
          <tr>
              <td></td>
              <td>
                  <asp:Label runat="server"  style="color:red" Text="用户名或密码错误" ID="user" Visible="false"></asp:Label>
              </td>
          </tr>
    </table>
    </div>
    </form>
</body>
</html>

