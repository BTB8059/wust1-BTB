<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentRegistration.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          body{
                   background-image:url('Images/J2.jpg');
                   background-size:cover;
                   /*background-color:silver;*/
              
              }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
                      
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>  
    </div>
        <div style="float:left"><img src="Images/o.png" style="height:200px;width:200px;" /></div>
        <br />
        <br />
        <br />
    <div align="center">
        <asp:Label ID="labe" runat="server" Text ="家长注册"  ForeColor="cadetblue"  Font-Size="30px"></asp:Label>
    </div>
        <br />
        <br />
    <div>    
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lable1" runat="server" ForeColor="blue"  Font-Size="20px" 
            Text="请注册您的信息：" ></asp:Label>   
        <asp:label ID="lable2" runat="server" ForeColor="red" Font-Size="15px"
            Text="*为必填信息"></asp:label>            
    </div>
        <br />

    <div>
<table align="center">
    <tr>
        <td align="right">*您的手机：</td>
        <td align="left"><asp:TextBox ID="nindeshouji" runat="server"></asp:TextBox></td>

        <td align="left" class="auto-style2"><asp:Button ID="jc" runat="server" Text="手机号检测" BackColor="skyblue" ValidationGroup="n"  style="height: 21px" OnClick="jc_Click"/></td>         
        <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_nindeshouji" runat="server" ValidationGroup="n"
        ErrorMessage="手机号必填" ForeColor="Red" ControlToValidate="nindeshouji" Text="*不能为空"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td align="left" class="auto-style1"><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="手机号已经存在" ForeColor="Red"  ControlToValidate="nindeshouji" ValidationGroup="n" ></asp:CustomValidator></td>
    </tr>
    <tr>
       <td align="right">*您的称呼：</td>
       <td align="left"><asp:TextBox ID="nindechenghu" runat="server" ></asp:TextBox></td>
       <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="必填"  ForeColor="Red" ControlToValidate="nindechenghu" Text="*不能为空"></asp:RequiredFieldValidator></td>
    </tr>    
    <tr>  
        <td align="right">*密码设置：</td>
        <td align="left"><asp:TextBox ID="psw1" runat="server" MaxLength="6" TextMode="Password"/></td>
        <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_psw1" runat="server"
         ErrorMessage="密码必填" ForeColor="Red" ControlToValidate="psw1" Text="*不能为空"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>   
       <td align="right">*确认密码：</td>
       <td align="left"><asp:TextBox ID="psw2" runat="server" TextMode="Password"/></td> 
       <td align="left"><asp:CompareValidator ID="CompareValidator1" runat="server"
           ControlToValidate="psw2" ErrorMessage="密码不一致" ForeColor="Red"
           ControlToCompare="psw1" Type="String" Operator="Equal"></asp:CompareValidator></td>        
    </tr>
   <tr>
       <td align="right" class="auto-style4">*性别：</td>
       <td align="left" class="auto-style3">
       <asp:UpdatePanel ID="updatepanel2" runat="server"> 
       <ContentTemplate>
       <asp:RadioButtonList ID="xingbie" runat="server" AutoPostBack="true" RepeatColumns="2" RepeatDirection="Horizontal" ><asp:ListItem>男</asp:ListItem><asp:ListItem>女</asp:ListItem>                
       </asp:RadioButtonList>
       </ContentTemplate>  
       </asp:UpdatePanel>
       </td>
       <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_sexs" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="xingbie" Text="*"></asp:RequiredFieldValidator>
       </td>      
   </tr>
   <tr>
       <td  align="right" class="auto-style6">*邮箱：</td>
       <td  align="left"><asp:TextBox ID="youxiang" runat="server" Height="22px"></asp:TextBox></td>
       <td class="auto-style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server"  ControlToValidate="youxiang" ErrorMessage="邮箱格式不合法！" ForeColor="Red"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>     
   </tr>
    <tr>
       <td align="right" class="auto-style2">*大概住址：</td>
       <td align="left" class="auto-style2">
           <asp:UpdatePanel ID="updatepanel1" runat="server"> 
           <ContentTemplate>  
           <asp:DropDownList ID="dagaizhuzhi1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dagaizhuzhi1_SelectedIndexChanged" >
           <asp:ListItem Value="0">武昌区</asp:ListItem>
           <asp:ListItem Value="1">洪山区</asp:ListItem>
           <asp:ListItem Value="2">江夏区</asp:ListItem>
           <asp:ListItem Value="3">青山区</asp:ListItem>
           <asp:ListItem Value="4">蔡甸区</asp:ListItem>
           <asp:ListItem Value="5">汉阳区</asp:ListItem>
           <asp:ListItem Value="6">江汉区</asp:ListItem>
           <asp:ListItem Value="7">硚口区</asp:ListItem>
           <asp:ListItem Value="8">东西湖区</asp:ListItem>
           <asp:ListItem Value="9">黄陂区</asp:ListItem>
           <asp:ListItem Value="10">新洲区</asp:ListItem>
           <asp:ListItem Value="11">江岸区</asp:ListItem>
           <asp:ListItem Value="12">汉南区</asp:ListItem>
           </asp:DropDownList>
           <asp:DropDownList ID="dagaizhuzhi2" runat="server" >
           <asp:ListItem Value="0">司门口</asp:ListItem>
           <asp:ListItem Value="0">武昌火车站</asp:ListItem>
           <asp:ListItem Value="0">中南路</asp:ListItem>
           <asp:ListItem Value="0">积玉桥</asp:ListItem>
           <asp:ListItem Value="0">首义路</asp:ListItem>
           <asp:ListItem Value="0">东亭</asp:ListItem>
           <asp:ListItem Value="0">武泰闸</asp:ListItem>
           <asp:ListItem Value="0">武昌周边</asp:ListItem>
           <asp:ListItem Value="0">小东门</asp:ListItem>
           <asp:ListItem Value="0">杨园</asp:ListItem>
           </asp:DropDownList>
           </ContentTemplate>  
           </asp:UpdatePanel></td> 
      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator_dagaizhuzhi" runat="server" 
           ErrorMessage="必填"  ForeColor="Red" ControlToValidate="dagaizhuzhi2" Text="*"></asp:RequiredFieldValidator></td>
  </tr>
     </table>      
        </div>
        <br />     
        <div align="center">
            <asp:CheckBox ID="CheckBox1"  runat="server"  AutoPostBack="true"  Text="同意使用协议" ForeColor="Blue" />
        </div>
        <div align="center">
            <asp:Button ID="zhuce" runat="server" Text="注册"  BackColor="skyblue" Height="29px" Width="71px" OnClick="zhuce_Click" />
        </div>    
        <br />
        <div>
        </div>  
    </form>
</body>
</html>
