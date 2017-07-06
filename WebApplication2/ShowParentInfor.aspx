<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowParentInfor.aspx.cs" Inherits="WebApplication2.ShowParentInfor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          #bg{
                   background-image:url('Images/J2.jpg');
                   background-size:cover;
              }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
    <div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ParentInfm.mdf;Integrated Security=True" InsertCommand="INSERT INTO ParTab(PHONENUM, CALL, PSW, SEX, EMAIL, ADDRESS) VALUES (@phonenums, @calls, @psws, @sexs, @emails, @addresss)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ParTab]">
            <InsertParameters>
                <asp:SessionParameter Name="phonenums" SessionField="phonenums" />
                <asp:SessionParameter Name="calls" SessionField="calls" />
                <asp:SessionParameter Name="psws" SessionField="psws" />
                <asp:SessionParameter Name="sexs" SessionField="sexs" />
                <asp:SessionParameter Name="emails" SessionField="emails" />
                <asp:SessionParameter Name="addresss" SessionField="addresss" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
