<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTutor.aspx.cs" Inherits="WebApplication2.ShowTutor" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TutorInf.mdf;Integrated Security=True" InsertCommand="INSERT INTO TutorTable(USERN, PSW, EMAIL, PHONES, STATUS, CALL, NAME, DEGREE, SEXS, TITLE, TeachMeth, TeachTime, TeachSet, TeachTimeBZ, TeachCost, TeachArea, Address, TeachSubject, PersonInfor, time) VALUES ( @use , @psw, @EMail, @phone, @shenfen, @calls, @names, @degrees, @sex, @titles, @TeachMeths, @TeachTimes, @TeachSets, @TeachTimeBZs, @TeachCosts, @TeachAreas, @Addresss, @TeachSubjects, @PersonInfors, @time)" OnSelecting="SqlDataSource1_Selecting" ProviderName="System.Data.SqlClient" SelectCommand="SELECT USERN AS [@use], PSW AS [@psw], EMAIL AS [@EMail], PHONES AS [@phone], STATUS AS [@shenfen], CALL AS [@calls], NAME AS [@names], DEGREE AS [@gegrees], SEXS AS [@sexs], TITLE AS [@titles], TeachMeth AS [@TeachMeths], TeachTime AS [@TeachTimes], TeachSet AS [@TeachSets], TeachTimeBZ AS [@TeachTimeBZs], TeachCost AS [@TeachCosts], TeachArea AS [@TeachAreas], Address AS [@Addresss], TeachSubject AS [@TeachSubjects], PersonInfor AS [@PersonInfors], time AS [@time] FROM TutorTable">
            <InsertParameters>
                <asp:SessionParameter Name="use" SessionField="use" />
                <asp:SessionParameter Name="psw" SessionField="psw" />
                <asp:SessionParameter Name="EMail" SessionField="EMail" />
                <asp:SessionParameter Name="phone" SessionField="phone" />
                <asp:SessionParameter Name="shenfen" SessionField="shenfen" />
                <asp:SessionParameter Name="calls" SessionField="calls" />
                <asp:SessionParameter Name="names" SessionField="names" />
                <asp:SessionParameter Name="degrees" SessionField="degrees" />
                <asp:SessionParameter Name="sex" SessionField="sex" />
                <asp:SessionParameter Name="titles" SessionField="titles" />
                <asp:SessionParameter Name="TeachMeths" SessionField="TeachMeths" />
                <asp:SessionParameter Name="TeachTimes" SessionField="TeachTimes" />
                <asp:SessionParameter Name="TeachSets" SessionField="TeachSets" />
                <asp:SessionParameter Name="TeachTimeBZs" SessionField="TeachTimeBZs" />
                <asp:SessionParameter Name="TeachCosts" SessionField="TeachCosts" />
                <asp:SessionParameter Name="TeachAreas" SessionField="TeachAreas" />
                <asp:SessionParameter Name="Addresss" SessionField="Addresss" />
                <asp:SessionParameter Name="TeachSubjects" SessionField="TeachSubjects" />
                <asp:SessionParameter Name="PersonInfors" SessionField="PersonInfors" />
                <asp:SessionParameter Name="time" SessionField="time" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    </body>
</html>

