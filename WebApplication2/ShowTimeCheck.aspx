<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTimeCheck.aspx.cs" Inherits="WebApplication2.ShowTimeCheck" %>

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
        <div>                    
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">猿辅导家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
    </div>     
         <div style="float:left; height: 80px;">
     <div>
    <asp:Button runat="server" Text="确认" ID="submit" BackColor="skyblue"  OnClick="submit_Click" Height="24px" Width="50px" />
    </div>
        <br />  
        <br />
        <div>
            <asp:button   runat="server" Text="返回" BackColor="skyblue" OnClick="btnclick" Height="24px" Width="50px"></asp:button>
        </div>
            </div>
         <br />       
        <br /> <br />  
        <br /> <br />     
        <br />
          <div   style="float:left"  >
            <br /><br /><br /><br /><br /><br /><br /><br />
            <img src="Images/u.png" height="150px" width="700px" />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp           
            <br /><br /><br /><br /><br /><br /><br /><br />
        </div>
    </form>
</body>
</html>
