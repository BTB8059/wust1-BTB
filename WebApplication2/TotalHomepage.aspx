<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TotalHomepage.aspx.cs" Inherits="WebApplication2.Scripts.总首页" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            margin-left: 42px;
        }
               
          #bg{
                   /*background-color:mistyrose;*/
               
                   /*background-color:antiquewhite;*/
                   
                   background-color:peachpuff;
                   /*background-color:lightpink;*/
                   /*background-color:bisque;*/
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
      
        <div style="background:no-repeat;height:700px; /*background-image:url('Images/16.jpg');*/ background-size:100% 100%; background-attachment: fixed;"> 
        
           
                
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
                <div style="float:left"> <img  src="Images/10.jpg" style="height:200px;width:192px;"/></div>
            
             <div style="float:right"> <img  src="Images/12.jpg" style="height:130px;width:460px;"/></div>
            <br />
                <div>
                   <div style="padding-left:280px;">  <asp:Label runat="server" ID="lbl1"  Text="<h1> 欢迎来到武汉家教网</h1>"></asp:Label>
                          <asp:label runat="server"  ID="tim"   ></asp:label>&nbsp;
                          <asp:label runat="server"  ID="hh"  ></asp:label>
                   </div>
              
                <div >
                    <br />
     
                    <div style="padding-right:20px;">
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" ID="lbn1"  PostBackUrl="~/TotalHomepage.aspx" Text="首页" />
          &nbsp;&nbsp;        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" ID="LinkButton1"  PostBackUrl="~/TotalHomepage.aspx" Text="帮助"  />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" ID="LinkButton2"  PostBackUrl="~/TotalHomepage.aspx" Text="家教网介绍"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Text="管理员登陆" ID="guanliyuan" OnClick="guanliyuan_Click" ></asp:LinkButton> </div>
                    
                    </div>  <br /> <br /> <br />  <br /> <br />
                    <div style="float:left">
                 <div style="float:left"><label>咨询电话：027-68885210</label></div>
                        <br />  <br /><br />  <br />
                         <div style="float:left"><asp:LinkButton  runat="server"  Text="学科教育/特长教育"></asp:LinkButton></div>
                          <br /> <br />  <br />
                  <br />
                            <div style="float:left"><asp:LinkButton  runat="server"  Text="个人家教/辅导机构"></asp:LinkButton></div> <br /> <br />  <br />
                  <br />
                <div style="float:left"><asp:LinkButton  runat="server"  Text="武昌/洪山/汉阳"></asp:LinkButton></div>
                          <br />  <br /><br />  <br />
                         <div style="float:left"><asp:LinkButton  runat="server"  Text="小学/初中/高中/小升初/初升高"></asp:LinkButton></div>  <br /><br /> <br />  <br />  
                            <div style="float:left"><asp:LinkButton  runat="server"  Text="语文/数学/英语/理科/文科"></asp:LinkButton></div>  <br /><br /> <br />  

                        </div>
                <div  style="height:300px; width: 420px; float:left; padding-left:180px;"  >
              <table> 
                  <caption><h2 style="color:red">火热咨询中！赶紧加入吧！</h2></caption>
                <tr><td><img src="Images/6.jpg" style="width:170px;height:170px;"></td>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td><img src="Images/7.jpg" style="width:170px;height:170px;"/></td>
                </tr> 
                  <tr><td>胡梦老师</td><td class="auto-style3"></td><td>郭东东老师</td></tr>
                   <tr>
                       <td><img src="Images/9.jpg" style="width:170px;height:170px;"></td>
                       <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                       <td><img src="Images/14.jpg" style="width:170px;height:170px;"/></td>
                       </tr>
                  <tr>
                      <td>林玉敏老师</td><td class="auto-style3"></td><td>徐艺老师</td>
                </tr> 
             </table>
                         
                </div>
                                   
                  <div style="float:right"  >
                      <table align="right" >
             <caption> <asp:Label ID="Label1" runat="server" Text="家长登录" Font-Size="30px" ForeColor="red"  ></asp:Label></caption>
             <tr>
                 <td align="right">手机号：</td>
                 <td align="left" class="auto-style1"><asp:TextBox ID="ParPhone" runat="server" Height="20px"  Width="230px"></asp:TextBox></td>             
             </tr>
             <tr>
                 <td align="right">密码：</td>
                 <td align="left" class="auto-style1"><asp:TextBox ID="ParPsw" runat="server" Height="19px" Width="232px"></asp:TextBox></td>                
             </tr>
              <tr>
                 <td align="left"><asp:Label ID="ParLabel" runat="server"></asp:Label></td>
             </tr>
             <tr>
                 <td></td>
                 <td>
                      <asp:Button ID="Button1" runat="server" Text="登录" BackColor="GreenYellow" CssClass="auto-style2" Height="32px" Width="78px" OnClick="ParLog_Click" />
       <asp:Button ID="Button2" runat="server" Text="注册" BackColor="GreenYellow" CssClass="auto-style2" Height="32px" Width="78px" OnClick="ParReg_Click" />
   
                 </td>
             </tr>
         </table>
       </div>
               <br />   <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <div  style="float:right; width: 326px;" >
             <table align="right" style="border-color:yellow"  >
             <caption> <asp:Label ID="jiajiaodenglu" runat="server" Text="家教登录" Font-Size="30px" ForeColor="red"  ></asp:Label></caption>
             <tr>
                 <td align="right">用户名：</td>
                 <td align="left" class="auto-style1"><asp:TextBox ID="TutUser" runat="server" Height="20px"  Width="230px"></asp:TextBox></td>             
             </tr>
             <tr>
                 <td align="right">密码：</td>
                 <td align="left" class="auto-style1"><asp:TextBox ID="TutPsw" runat="server" Height="19px" style="width: 232px"></asp:TextBox></td>                
             </tr>
              <tr>
                 <td align="left"><asp:Label ID="TutLabel" runat="server"></asp:Label></td>
             </tr>
             <tr>
                 
               
             <td>   </td>    
             <td>         <asp:Button ID="TutLog" runat="server" Text="登录" BackColor="GreenYellow" CssClass="auto-style2" Height="32px" Width="78px" OnClick="TutLog_Click" />               
                                  
                    <asp:Button ID="TutReg" runat="server" Text="注册" BackColor="GreenYellow" CssClass="auto-style2" Height="32px" Width="78px" OnClick="TutReg_Click" />
              </td>   </tr>
             </table>
                </div>
               </div>
                
      
          </div>
    
   
    </form>
</body>
</html>
