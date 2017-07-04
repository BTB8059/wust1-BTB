<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentIndividualCenter.aspx.cs" Inherits="WebApplication2.Scripts.ParentIndividualCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:Label ID="lable1" runat="server" ForeColor="Green"  Font-Size="15px" 
            Text="武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！"   ></asp:Label>
    </div>
    <br />
    <br />
    <div align="center">
        <asp:Label ID="lable11" runat="server" Text="家长个人中心" Font-Size="35px" ForeColor="Green"></asp:Label>   
    </div>
    <br />
    <br />
    <div>
        <asp:Label ID="label2" runat="server" Text="您的资料" Font-Size="25px" ForeColor="Black"></asp:Label>
        <br />
        <asp:TextBox ID="textbox1" runat="server" Height="159px" Width="147px" ></asp:TextBox>
        <br />
        <asp:Label ID="label3" runat="server" Text="要求家教的信息" Font-Size="25px" ForeColor="Blue"></asp:Label>
        <br />
        <asp:TextBox  ID="textbox2" runat="server" Height="80px" Width="642px" ></asp:TextBox>
        <br />
        <asp:LinkButton ID="linkbutton1" runat="server" Text="主动预约家教" Font-Size="25px" ForeColor="red"></asp:LinkButton>
        <br />
        <br />     
        <asp:Label ID="lable3" runat="server" Text="个人设置" Font-Size="25px" ForeColor="Black"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="linkbutton2" runat="server" Text="修改手机号"></asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="linkbutton3" runat="server" Text="修改密码"></asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="linkbutton4" runat="server" Text="修改个人信息"></asp:LinkButton>
    </div>
    </form>
</body>
</html>
