<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check2.aspx.cs" Inherits="WebApplication2.check2" %>

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
    <div>
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
         <asp:Label ID="lable1" runat="server" ForeColor="Blue"  Font-Size="15px" 
            Text="武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！"   ></asp:Label>
    </div>
        
         <div align="center">
        <table>
             <tr>
                <td align="right" class="auto-style4" >*课时费：</td>
                <td align="left" class="auto-style3">
                <asp:UpdatePanel ID="updatepanel1" runat="server"> 
                <ContentTemplate>
                 <asp:DropDownList ID="DropDownList_keshifei" AutoPostBack="true"  runat="server" >
                 <asp:ListItem Value="0">30元/小时</asp:ListItem>
                 <asp:ListItem Value="1">50元/小时</asp:ListItem>
                 <asp:ListItem Value="2">80元/小时</asp:ListItem>
                 <asp:ListItem Value="3">100元/小时</asp:ListItem>
                 <asp:ListItem Value="4">120元/小时</asp:ListItem>
                 <asp:ListItem Value="5">140元/小时</asp:ListItem>
                 <asp:ListItem Value="6">160元/小时</asp:ListItem>
                 <asp:ListItem Value="7">180元/小时</asp:ListItem>
                 <asp:ListItem Value="8">200元/小时</asp:ListItem>
                 <asp:ListItem Value="9">300元/小时</asp:ListItem>
                 <asp:ListItem Value="10">400元/小时</asp:ListItem>
                 <asp:ListItem Value="11">500元/小时</asp:ListItem>               
                 </asp:DropDownList>
                 </ContentTemplate>  
                 </asp:UpdatePanel>
                 </td>     
            </tr>
        </table>
  </div>
        <br />
        <br />
        <br />
  <div align="center">
      <table>
            <tr>
                <td align="right" class="auto-style2">*授课区域：</td>
                <td align="left" class="auto-style2">
                    <asp:UpdatePanel ID="updatepanel2" runat="server"> 
                    <ContentTemplate>  
                    <asp:DropDownList ID="shukequyu1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="shukequyu1_SelectedIndexChanged"  >
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
                    <asp:DropDownList ID="shukequyu2" runat="server" >
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
            </tr> 
       </Table>
  </div>
        <br />
        <br />
        <br />

  <div align="center">
      <table>
             <tr>
                <td align="right">*教授学科：</td>
                <td align="left">
                    <asp:UpdatePanel ID="updatepanel3" runat="server"> 
                    <ContentTemplate>   
                 <asp:DropDownList ID="jiaoshouxueke1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="jiaoshouxueke1_SelectedIndexChanged">
                 <asp:ListItem Value="0">学前教育</asp:ListItem>
                 <asp:ListItem Value="1">小学家教</asp:ListItem>
                 <asp:ListItem Value="2">初中家教</asp:ListItem>
                 <asp:ListItem Value="3">高中家教</asp:ListItem>
                 <asp:ListItem Value="4">外语家教</asp:ListItem>
                 <asp:ListItem Value="5">特长家教</asp:ListItem>
                 <asp:ListItem Value="6">大学辅导</asp:ListItem>
                 </asp:DropDownList>
                 <asp:DropDownList ID="jiaoshouxueke2" runat="server" >
                 <asp:ListItem Value="0">幼儿陪玩</asp:ListItem>
                 <asp:ListItem Value="0">幼儿托管</asp:ListItem>
                 <asp:ListItem Value="0">少儿英语</asp:ListItem>
                 <asp:ListItem Value="0">幼儿园</asp:ListItem>
                 <asp:ListItem Value="0">智力开发</asp:ListItem>
                 <asp:ListItem Value="0">学前教育</asp:ListItem>
                 </asp:DropDownList>
                 </ContentTemplate>  
                 </asp:UpdatePanel></td>             
            </tr>
        </table>  
     </div>
    <br />
    <br />
    <div align="center">
       <asp:Button runat="server" Text="查找" OnClick="Unnamed1_Click"   Height="34px"  Width="79px"/>
    </div>
    </form>
</body>
</html>
