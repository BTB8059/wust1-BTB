<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GLfirstpage.aspx.cs" Inherits="WebApplication2.GLfirstpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎管理员</title>
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            margin-left: 42px;
        }
               
          #bg{
                   
                   background-image:url('Images/bj1.jpg');
                   background-color:silver;
                  
              }
      #img{

      }
        .auto-style3 {
            width: 254px;
        }
    </style>
</head>
<body id="bg">
  <form id="form1" runat="server">
    <br />
    <div>
        <asp:Label ID="lable1" runat="server" ForeColor="black"  Font-Size="15px" 
            Text="猿辅导家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！"   ></asp:Label>
    </div>
    <br />
    <br />
    <br />
      <div style="padding-left:280px;">  <asp:Label runat="server" ID="lbl1"  ForeColor="cadetblue" Text="<h1> 欢迎管理员</h1>"></asp:Label>
      <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            margin-left: 42px;
        }
               
          #bg{
                   
                   background-image:url('Images/bj1.jpg');
                   background-color:silver;
                  
              }
      #img{

      }
        .auto-style3 {
            width: 254px;
        }
    </style>
    <br />
    <br />
       
    
       <table align="center" width:30%; style="height: 199px; width: 366px">
        
              
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
                 <asp:Button ID="denglu" runat="server" Text="登录" BackColor="skyblue" Height="26px" OnClick="denglu_Click" Width="50px" /> &nbsp;
            
           &nbsp;&nbsp;
                <asp:Button ID="zhuce" runat="server" BackColor="skyblue" Text="注册" OnClick="zhuce_Click" Height="26px" Width="50px" />
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
    </div>
  </div>
</body>
</html>