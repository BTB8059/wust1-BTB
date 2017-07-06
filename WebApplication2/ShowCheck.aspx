<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCheck.aspx.cs" Inherits="WebApplication2.ShowCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          #bg{ background-color:silver;
               background-image:url('Images/bj1.jpg');
              }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
        <marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">猿辅导家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
        <br />
        <br />
        <br />
          <div style="float:left;"     >
            <img src="Images/18.jpg" height="150px" width="150px" />
            <br /><br /><br /><br /><br /><br />
            <img src="Images/19.jpg" height="150px" width="150px" />
              <br /><br /><br /><br /><br /><br />
            <img src="Images/20.jpg" height="150px" width="150px" />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
        </div>
        <div style="float:left; padding-left:200px">
    <div >
    <asp:Button runat="server" Text="确认" BackColor="skyblue" ID="submit" OnClick="submit_Click" Height="27px" Width="58px" />
    </div>
        <br />
        <br />

        <br />
        <div>
            <asp:linkbutton   runat="server" Text="返回上一级重新查找" OnClick="Unnamed1_Click"></asp:linkbutton>
        </div>
        <br />
          <br />
          <br />
        <div>
            <asp:button runat="server" ID="goback" Text="返回" BackColor="skyblue" OnClick="goback_Click" Height="27px" Width="58px" />
        </div>
        </div>
     
    </form>
</body>
</html>
