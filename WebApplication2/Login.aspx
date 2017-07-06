<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Scripts.登录界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style  type="text/css">
         body{
             background-image:url('Images/bj1.jpg');
                   background-color:silver;
         }
         .auto-style6 {
            float:left;
            height:31px;
            font-size:25px;
            color:lightblue;
        }
          .auto-style7 {
            float:right;
            font-size:25px;           
        }
           .auto-style 8{
            align-content:center;
            font-size:31px;
        }
           .auto-stylemid{
            align-content:center;
        }
           .de{
               background-color:antiquewhite;
               opacity:0.5
           }
           .bo{
               border:1px solid #e2bf93;
           }
     
 </style>
    </head>
<body>
    <form id="form1" runat="server"> 
    <div class="de">               
      <marquee direction="left" align="bottom"  height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">武汉家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！
      </marquee>
    </div>
    <div>
    </div>

    <div style="float:left;padding-left:300px;">
       <div class="bo">
         <div align="center">
         <asp:Label ID="label2" runat="server" ForeColor="CadetBlue" Font-Size="35px" Text="非家长登录">
         </asp:Label>
         
       </div>
       <div align="center" class="auto-stylemid" >
         <div class="auto-style4">
            <div align="center" class="auto-style6">用户名</div>
              <div align="center" class="auto-style7">
                <asp:TextBox ID="TutUser" runat="server" Height="21px">
                </asp:TextBox>
              </div>
            </div>
            <div class="auto-style4">
                <div align="center" class="auto-style6" >密码</div>
                <div align="center" class="auto-style7">
                    <asp:TextBox ID="TutPsw" runat="server"  TextMode="Password" Height="21px" >
                    </asp:TextBox>
                </div>
            </div>
            <div>
                 <div align="centert"><asp:Label ID="TutLabel" runat="server"></asp:Label></div>
             </div>
            <div>
                <div align="center" class="auto-style6">还没有注册</div>
                <div align="center" class="auto-style7"><asp:LinkButton ID="TutReg" Text="点击注册" runat="server" OnClick="TutReg_Click" ></asp:LinkButton></div>
            </div>
            <div>
                <div align="center" class="auto-style8">
                <asp:Button ID="TutLog" runat="server" Text="登录" BackColor="LightBlue" Width="97px" Height="34px"  CssClass="auto-style3" OnClick="TutLog_Click"/>
                </div>
            </div>
           </div>
        </div>
             <br />
             <br />
             <br />
           
       <div class="bo">
       <div align="center">
      <asp:Label ID="label1" runat="server" ForeColor="CadetBlue" Font-Size="35px" Text="家长登录"></asp:Label>
      </div>
     
        <div align="center">
              <div class="auto-style4">
                  <div align="center" class="auto-style6">手机号</div>
                  <div align="center" class="auto-style7"><asp:TextBox ID="ParPhone" runat="server" Width="135px" Height="20px"></asp:TextBox></div>
              </div>
              <div class="auto-style4">
                  <div align="center" class="auto-style6">密码</div>
                  <div align="center" class="auto-style7"><asp:TextBox ID="ParPsw" runat="server" TextMode="Password" Width="133px" Height="23px" ></asp:TextBox></div>
              </div>
              <div>
                 <div align="center"><asp:Label ID="ParLabel" runat="server"></asp:Label></div>
              </div>
              <div>
                  <div align="center" class="auto-style6">还没有注册</div>
                  <div align="center" class="auto-style7">
                      <asp:LinkButton ID="ParReg" Text="点击注册" runat="server" OnClick="ParReg_Click" >
                      </asp:LinkButton>
                  </div>
              </div>
              <div>
                  <div align="right"><asp:Button ID="ParLog" runat="server" Text="登录" Backcolor="LightBlue" Font-Family="Sans-serif"  CssClass="auto-style2" Height="34px" Width="99px" OnClick="ParLog_Click" /></div>
              </div>
        </div>
        </div>
    </form>
</body>
</html>
