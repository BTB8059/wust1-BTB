<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorRegistration.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            height: 32px;
            width: 117px;
        }
        .auto-style6 {
            width: 117px;
        }
       
          #bg{
                 background-color:silver;
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
    <div align="center">
        <asp:Label ID="labe" runat="server" Text ="家教注册" ForeColor="GreenYellow"  Font-Size="30px"></asp:Label>
    </div>
        <br />
        <br />
     <div>    
        <asp:Label ID="Label1" runat="server" ForeColor="blue"  Font-Size="20px" 
            Text="注册您的信息：" ></asp:Label>   
        <asp:label ID="lable2" runat="server" ForeColor="red" Font-Size="15px"
            Text="*为必填信息"></asp:label>            
    </div>
        <br />
        <div>
    <table align="center">
        <tr>            
             <td align="right" class="auto-style2">*用户名:</td>                        
             <td align="left"><asp:TextBox ID="username" runat="server"  ></asp:TextBox></td>                                      
             <td align="left"><asp:Button ID="jc" runat="server" Text="用户名检测" BackColor="SkyBlue" ValidationGroup="n"  style="height: 21px" /></td>       
             <td class="auto-style1" ><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="username" ValidationGroup="n" ErrorMessage="用户名不能为空!" ForeColor="Red" ></asp:RequiredFieldValidator></td>
             <td ><asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server"  ControlToValidate="username" ValidationGroup="n" ErrorMessage="格式不正确！<%--6~18个字符包括字母数字下划线，字母开头，字母或数字结尾--%>"  ForeColor="OrangeRed"
             ValidationExpression ="^[a-zA-Z]\w{5,17}$"></asp:RegularExpressionValidator></td> 
             
        </tr>
        <tr>
            <td align="left"><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="用户名已经存在" ForeColor="Red"  ControlToValidate="username" ValidationGroup="n" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>
        </tr>   
         <tr>  
        <td align="right">*密码设置</td>
        <td align="left"><asp:TextBox ID="psw1" runat="server" MaxLength="6" TextMode="Password"/></td>
        <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_psw1" runat="server"
         ErrorMessage="密码必填" ForeColor="Red" ControlToValidate="psw1" Text="*不能为空"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>   
       <td align="right">*确认密码</td>
       <td align="left"><asp:TextBox ID="psw2" runat="server" TextMode="Password"/></td> 
       <td align="left"><asp:CompareValidator ID="CompareValidator1" runat="server"
           ControlToValidate="psw2" ErrorMessage="密码不一致" ForeColor="Red"
           ControlToCompare="psw1" Type="String" Operator="Equal"></asp:CompareValidator></td>        
    </tr>
        <tr>
            <td  align="right" class="auto-style6">*邮箱：</td>
            <td  align="left"><asp:TextBox ID="email" runat="server" Height="22px"></asp:TextBox></td>
            <td class="auto-style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server"  ControlToValidate="email" ErrorMessage="邮箱格式不合法！" ForeColor="Red"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>     
        </tr>
        <tr>
            <td align="right" class="auto-style2">*手机：</td>
            <td align="left"><asp:TextBox ID="phonenum" runat="server" Height="22px"></asp:TextBox></td>
            <td class="auto-style1"><asp:RequiredFieldValidator ID="RequiredFieldValidator_phonenum" runat="server" 
                    ErrorMessage="手机号必填" ForeColor="Red" ControlToValidate="phonenum" Text="*不能为空"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td align="right" class="auto-style2">*选择身份：</td>
            <td align="left"><asp:RadioButtonList ID="xuanzeshenfen" runat="server"  AutoPostBack="true"  
            RepeatColumns ="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="xuanzeshenfen_SelectedIndexChanged" Width="188px" > <asp:ListItem>个人家教</asp:ListItem><asp:ListItem>辅导机构</asp:ListItem></asp:RadioButtonList></td>      
        </tr> 
        
    </table>
        <br />
       
            <div align="center">
            <asp:CheckBox ID="CheckBox1"  runat="server"  AutoPostBack="true"  Text="同意使用协议" ForeColor="Blue" />
            </div>
        
            <div align="center">
            <asp:Button ID="button1" runat="server" Text="同意协议并注册"  BackColor="skyblue" Height="29px" Width="169px" OnClick="button1_Click" />
            </div>    
            </div>
    </form>
</body>
</html>
