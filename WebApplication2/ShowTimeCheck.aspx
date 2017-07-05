<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTimeCheck.aspx.cs" Inherits="WebApplication2.ShowTimeCheck" %>

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
       
         <div style="float:left;">
     <div>
    <asp:Button runat="server" Text="确认" ID="submit" OnClick="submit_Click" />
    </div>
        <br />
       

        <br />
        <div>
            <asp:button   runat="server" Text="返回" OnClick="btnclick"></asp:button>
        </div>
            </div>
         <br />
       

        <br /> <br />
       

        <br /> <br />
       

        <br />
          <div   style="float:left"  >
            <img src="Images/18.jpg" height="150px" width="150px" />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp
            <img src="Images/19.jpg" height="150px" width="150px" />
            &nbsp; &nbsp; &nbsp; &nbsp; 
            <img src="Images/20.jpg" height="150px" width="150px" />
            &nbsp; &nbsp; &nbsp; &nbsp;
            <br /><br /><br /><br /><br /><br /><br /><br />
        </div>
    </form>
</body>
</html>
