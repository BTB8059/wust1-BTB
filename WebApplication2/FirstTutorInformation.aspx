<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstTutorInformation.aspx.cs" Inherits="WebApplication2.Scripts.二填写个人家教信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
          <style type="text/css">
          #bg{
                    background-color:peachpuff;
              }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
      
    <div>
                       
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
    </div>

        <br />
        <br />
        <br />
    <div align="center">
        <asp:Label ID="labe" runat="server" Text ="个人家教注册" ForeColor="GreenYellow"  Font-Size="30px"></asp:Label>
    </div>
        <br />
        <br />
        <asp:Label ID="label2" runat="server" ForeColor="Red" Font-Size="20px" Text="  *为必填信息"></asp:Label>
        <br />
        <br />
        <br />
           
    </div>
    <div>
        <table align="center">
            <tr>
                <td align="right" class="auto-style4">*您的称呼</td>
                <td class="auto-style3"><asp:TextBox ID="nindechenghu" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_nindechenghu" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="nindechenghu" Text="*"></asp:RequiredFieldValidator></td>
                    
            </tr>
            <tr>
                <td align="right" class="auto-style4">*真实姓名</td>
                <td class="auto-style3"><asp:TextBox ID="zhenshixingming" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_zhenshixingming" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="zhenshixingming" Text="*"></asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td align="right" class="auto-style4">*性别</td>
                <td align="left" class="auto-style3">
                <asp:UpdatePanel ID="updatepanel1" runat="server"> 
                <ContentTemplate>
                <asp:RadioButtonList ID="sexs" runat="server"  AutoPostBack="true" 
                RepeatColumns="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="sexs_SelectedIndexChanged" ><asp:ListItem>男</asp:ListItem><asp:ListItem>女</asp:ListItem>                
                </asp:RadioButtonList>
                </ContentTemplate>  
                </asp:UpdatePanel>
                </td>
                <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_sexs" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="sexs" Text="*"></asp:RequiredFieldValidator>
                </td>      
            </tr>
            <tr>
                <td align="right" class="auto-style4"> *您的身份</td>
                <td class="auto-style3">
                <asp:UpdatePanel ID="updatepanel2" runat="server"> 
                <ContentTemplate>
                    <asp:RadioButtonList ID="nindeshenfen" runat="server" 
                    RepeatColumns ="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="nindeshenfen_SelectedIndexChanged"  > 
                    <asp:ListItem>大学家教</asp:ListItem>
                    <asp:ListItem>教育机构教师</asp:ListItem>
                    <asp:ListItem>专职教师</asp:ListItem>
                    <asp:ListItem>在职教师</asp:ListItem>
                    </asp:RadioButtonList>
                    </ContentTemplate>  
                    </asp:UpdatePanel>
                    </td>
                <td align="left"><asp:RequiredFieldValidator ID="RequiredFieldValidator_nindeshenfen" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="nindeshenfen" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">个性标题:</td>
                <td align="left"  class="auto-style3"><asp:TextBox ID="gexingbiaoti" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td align="right" class="auto-style4" >*授课方式</td>
                <td align="left">
                <asp:UpdatePanel ID="updatepanel9" runat="server"> 
                <ContentTemplate>                   
                <asp:RadioButtonList ID="RadioButtonList_shoukefangshi" runat="server"  AutoPostBack="true" 
            RepeatColumns ="3" RepeatDirection="Horizontal" > <asp:ListItem>一对一家教上门</asp:ListItem><asp:ListItem>一对一学生上门</asp:ListItem><asp:ListItem>小班辅导</asp:ListItem></asp:RadioButtonList>
                </ContentTemplate>  
                </asp:UpdatePanel>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator_shukefangshi" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="RadioButtonList_shoukefangshi" Text="*"></asp:RequiredFieldValidator>
                </td>      
            </tr>
            <tr>
                <td align="right" class="auto-style4" >*授课时间</td>
                <td align="left" class="auto-style3">
                <asp:UpdatePanel ID="updatepanel10" runat="server"> 
                <ContentTemplate>
                 <asp:DropDownList ID="DropDownList_shoukeshijian" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="DropDownList_shoukeshijian_SelectedIndexChanged"  >
                 <asp:ListItem Value="0">1年以下</asp:ListItem>
                 <asp:ListItem Value="1">1年</asp:ListItem>
                 <asp:ListItem Value="2">2年</asp:ListItem>
                 <asp:ListItem Value="3">3年</asp:ListItem>
                 <asp:ListItem Value="4">4年</asp:ListItem>
                 <asp:ListItem Value="5">5年</asp:ListItem>
                 <asp:ListItem Value="6">6年</asp:ListItem>
                 <asp:ListItem Value="7">7年</asp:ListItem>
                 <asp:ListItem Value="8">8年</asp:ListItem>
                 <asp:ListItem Value="9">9年</asp:ListItem>
                 <asp:ListItem Value="10">10年</asp:ListItem>
                 <asp:ListItem Value="11">10年以上</asp:ListItem>               
                 </asp:DropDownList>
                 </ContentTemplate>  
                 </asp:UpdatePanel>
                 </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator_shoukeshijian" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="DropDownList_shoukeshijian" Text="*"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td align="right" class="auto-style4" >*假期授课设置</td>
                <td align="left">
                <asp:UpdatePanel ID="updatepanel11" runat="server"> 
                <ContentTemplate>
               <asp:RadioButtonList ID="RadioButtonList_jiaqishukeshezhi" runat="server"  AutoPostBack="true"  
               RepeatColumns ="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList_jiaqishukeshezhi_SelectedIndexChanged"> <asp:ListItem>寒假授课</asp:ListItem><asp:ListItem>暑假授课</asp:ListItem><asp:ListItem>寒暑假都授课</asp:ListItem>
               <asp:ListItem>寒暑假都不授课</asp:ListItem></asp:RadioButtonList>
               </ContentTemplate>  
                 </asp:UpdatePanel>
               </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator_jiaqishoukeshezhi" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="RadioButtonList_jiaqishukeshezhi" Text="*"></asp:RequiredFieldValidator>
                </td>      
            </tr>
            <tr>
                <td align="right" class="auto-style4" >*授课时间备注</td>
                <td align="left"  class="auto-style3">
                <asp:UpdatePanel ID="updatepanel12" runat="server"> 
                <ContentTemplate>
                <asp:TextBox ID="shukeshijianbeizhu" runat="server" ></asp:TextBox>
                </ContentTemplate>  
                 </asp:UpdatePanel>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator_shoukeshijianshezhi" runat="server" 
                    ErrorMessage="必填"  ForeColor="Red" ControlToValidate="shukeshijianbeizhu" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>  
        </table>
    </div>
    <div align="center">
        <asp:Button ID="xiayibu" runat="server" Text="下一步"  BackColor="Yellow" Height="29px" Width="169px" OnClick="xiayibu_Click" />
    </div> 
    </form>
</body>
</html>
