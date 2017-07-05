<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCheck.aspx.cs" Inherits="WebApplication2.ShowCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          #bg{ background-color:peachpuff;
              }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">

          <div style="float:left;"     >
            <img src="Images/18.jpg" height="150px" width="150px" />
            <br /><br /><br /><br /><br /><br /><br /><br />
            <img src="Images/19.jpg" height="150px" width="150px" />
              <br /><br /><br /><br /><br /><br /><br /><br />
            <img src="Images/20.jpg" height="150px" width="150px" />
            <br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br />
        </div>
        <div style="float:left; padding-left:200px">
    <div >
    <asp:Button runat="server" Text="确认" ID="submit" OnClick="submit_Click" />
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
            <asp:button runat="server" ID="goback" Text="返回" OnClick="goback_Click" />
        </div>
        </div>
     
    </form>
</body>
</html>
