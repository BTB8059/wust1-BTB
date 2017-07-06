<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorCenter.aspx.cs" Inherits="WebApplication2.Scripts.四家教机构_个人中心" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          #bg{
                   background-color:silver;
                   background-image:url('Images/bj1.jpg');
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
    <div align="center">
        <asp:Label ID="label1" runat="server" Text="家教个人中心" ForeColor="CadetBlue" Font-Size="35px"></asp:Label>
        <br />
        <br />
    </div>
    <div>
        <asp:Label ID="label2" runat="server" Text="您的资料"  Font-Size="25px" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Label ID="TutInf" runat="server" Text ="" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="lable3" runat="server" Text="个人设置" Font-Size="25px" ForeColor="Red"></asp:Label>
        <br />
        <br />
       
        <br />
        <asp:Label ID="label3" runat="server" Text="可应聘的学员信息" ForeColor="Red" Font-Size="25px"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="textbox2" runat="server" rows="35" Height="88px" Width="476px"></asp:TextBox>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
