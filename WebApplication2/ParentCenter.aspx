<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentCenter.aspx.cs" Inherits="WebApplication2.Scripts.家长个人中心" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
          #bg{
                     background-color:silver;
                      background-image:url('Images/j2.jpg');
                   

              }
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            float: left;
            width: 212px;
            height: 194px;
        }
      </style>
</head>
<body id="bg">
    <form id="form1" runat="server">
     

    <div>
                       
<marquee direction="left" align="bottom" height="25" width="100%" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2" scrolldelay="1">猿辅导家教网常年进行武汉家教招聘，如果您想做武汉家教兼职或找家教工作
                 请按照以下方式进行注册,注册后就能与家长进行联系！</marquee>
    </div>
    <br />
    <br />
    <div align="center">
        <asp:Label ID="label1" runat="server" Text="家长个人中心" ForeColor="cadetblue" Font-Size="35px"></asp:Label>
       
       <div>
            <br /> 
            <asp:LinkButton ID="checktime" runat="server" Text="按发布时间查找相关家教老师" OnClick="checktime_Click"  ></asp:LinkButton>
   
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
       <asp:LinkButton ID="check" runat="server" Text="按其他条件查找相关家教老师" OnClick="check_Click" ></asp:LinkButton>
       </div>
        <br />
    </div>
    <div>         
          <div style="float:left"> <img  src="Images/o.png" style="height:250px; width:250px;"/></div>
      
       <div style="padding-left:30px; " class="auto-style2"> <asp:Label ID="label2" runat="server" Text="您的资料"  Font-Size="25px" ForeColor="Red"></asp:Label>
        <br />
             <br /> <br />    
        <asp:Label ID="ParInf" runat="server" Text ="" ></asp:Label>
        <br /> <br /> <br /> <br /></div>
        <br />
       <div style="float:right;" > 
           <table  style="color:mistyrose">
               <tr>
                   
                   <td>
                        <asp:Label ID="lable3" runat="server" Text="个人设置:" Font-Size="25px" ForeColor="Red"></asp:Label>
                   </td>
                   <td></td>
                   </tr>
                     <tr>
                   <td class="auto-style1">

                   </td>
               </tr>
                     <tr>
                   <td>

                   </td>
               </tr>
               
               <tr>
                   <td>
                         <asp:LinkButton ID="linkbutton3" runat="server" Text="修改密码"></asp:LinkButton>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">

                   </td>
               </tr>
                 <tr>
                   <td>

                   </td>
               </tr>
                <tr>
                   <td>
                         <asp:LinkButton ID="linkbutton4" runat="server" Text="修改个人信息"></asp:LinkButton>
                   </td>
               </tr>
           </table>
          
         
      
       </div>
        
    </div>
      
     
      <br />
        <br />
        <div style="float:left;">
            <asp:Label runat="server" Text="<h3>在职老师</h3>"></asp:Label>
             
               <label><h4>胡梦&nbsp;女&nbsp;武昌区司门口</h4></label>
             <label>寒假均有时间 &nbsp;初中语文</label>
            <br /> <br />
             <label></label>
          
            <label>座右铭：没有克服不了的困难<br />
            ---------------------------------------------</label>
              <br />
             <asp:Label runat="server" Text="<h3>在职老师</h3>"></asp:Label>
            <label><h4>郭东东&nbsp;男&nbsp;汉阳区王家湾</h4></label>
             <label>教龄四年</label>
            <br /> <br />
             <label>高等数学</label>
            <label>座右铭：开心每一天</label>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
         <br />
      
       
      
    <div style="float:right; padding-left: 13px;">
        <asp:label runat="server"><h2>您还可以:</h2></asp:label>
        <br />
          
           &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Text="点此查看更多家教" OnClick="LinkButton2_Click" ></asp:LinkButton>
       
<br /><br />     

   
    </form>
</body>
</html>
