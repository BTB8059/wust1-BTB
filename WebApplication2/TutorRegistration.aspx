<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorRegistration.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .bg1 {
           background-image:url(/Images/pink.jpg);
        }

        .style1 {
            font-size: 70px;
            margin-left: 200px;
        }
        .style2{
            width:100%;
        }
        .style3{
            width:53%;
            text-align:right;
        }

         .style5{
             margin-top:20px;
         }
         .style6{
             margin-left:100px;
         }
    </style>
</head>
<body class="bg1">
    <form id="form1" runat="server">
        <div class="style6">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/yuanfudao.jpg" />
            <asp:Label ID="labe" runat="server" Style="margin-left:200px"  ForeColor="CadetBlue" Font-Size="40px">家教注册</asp:Label>
        </div>
        <br />
        <div class="style2">
            <table>
                <tr class="style5">
                    <td class="style3">用户名:</td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>

                    </td>
                    <td>
                        <asp:Button ID="jc" runat="server" Text="用户名检测" BorderColor="SkyBlue" ValidationGroup="n" />                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ValidationGroup="n" ErrorMessage="用户名不能为空!" ForeColor="Red"></asp:RequiredFieldValidator>   
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="用户名已经存在" ForeColor="Red" ControlToValidate="username" ValidationGroup="n" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr class="style5">
                    <td class="style3">密码设置</td>
                    <td>
                        <asp:TextBox ID="psw1" runat="server" MaxLength="6" TextMode="Password" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_psw1" runat="server"
                            ErrorMessage="密码必填" ForeColor="Red" ControlToValidate="psw1" Text="*不能为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="style5">
                    <td class="style3">确认密码</td>
                    <td>
                        <asp:TextBox ID="psw2" runat="server" TextMode="Password" /></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToValidate="psw2" ErrorMessage="密码不一致" ForeColor="Red"
                            ControlToCompare="psw1" Type="String" Operator="Equal"></asp:CompareValidator></td>
                </tr>
                <tr class="style5">
                    <td class="style3">邮箱：</td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="email" ErrorMessage="邮箱格式不合法！" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                </tr>
                <tr class="style5">
                    <td class="style3">手机：</td>
                    <td>
                        <asp:TextBox ID="phonenum" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_phonenum" runat="server"
                            ErrorMessage="手机号必填" ForeColor="Red" ControlToValidate="phonenum" Text="*不能为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="style5">
                    <td class="style3">选择身份：</td>
                    <td>
                        <asp:RadioButtonList ID="xuanzeshenfen" runat="server" AutoPostBack="true"
                            RepeatColumns="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="xuanzeshenfen_SelectedIndexChanged">
                            <asp:ListItem>个人家教</asp:ListItem>
                            <asp:ListItem>辅导机构</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>

            </table>
            <br />

            <div class="style3">
                <asp:Button ID="button1" runat="server" Text="注册" BorderColor="SkyBlue" OnClick="button1_Click" />&nbsp;
                <asp:Button ID="button2" runat="server" Text="重填" BorderColor="SkyBlue" OnClick="button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
