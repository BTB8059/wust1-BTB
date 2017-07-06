<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowGLYInf.aspx.cs" Inherits="WebApplication2.ShowGLYInf" %>

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
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
