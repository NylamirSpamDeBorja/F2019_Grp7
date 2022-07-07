<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebCommunity.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"  
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">  
    <title></title>  

    <style type="text/css">
        .body {
       background-image: url('Breaking-Story-HBCU-1024x576.png');  
       background-repeat:no-repeat;  
       background-attachment:fixed;  
       background-size: cover;
       } 
      
      .navbar {
       overflow: hidden;
       background-color: #8A6E52;
       margin-top:50px;
       }

     .navbar p{
      float: left;
      font-size: 20px;
      font-weight:bold;
      color: white;
      text-align: center;
      text-decoration: none;
      text-transform: uppercase;
      margin-left:15px;
      letter-spacing:3px;
      }

     .navbar a {
      float: right;
      font-size: 18px;
      color: white;
      text-align: center;
      padding: 18px 14px;
      text-decoration: none;
      text-transform: uppercase;
      }

     .header {
         color: white;
         font-size: 32px;
         font-weight: bold;
         margin-left: 190px;
     }

    .form1{
        margin-left: 250px;
    }

    </style>
</head>

<body class="body">

     <div class="navbar">
        <p> Dashboard </p>
        <a href="welcomepage.html">sign-out</a>
        <a href="#">Course Page</a>
        <a href="Profile.aspx">profile</a>
    </div>

      <form id="form1" runat="server" class="form1"> 
          <h4 class="header">  Student Year Level Population  </h4>

             <asp:Chart ID="Chart1" runat="server"  BackColor="0, 0, 64" BackGradientStyle="LeftRight"  
                BorderlineWidth="0" Height="500px" Palette="None"
                Width="800px" BorderlineColor="64, 0, 64" CssClass="chart">  
                <Titles>  
                    <asp:Title ShadowOffset="10" Name="Items" />  
                </Titles>  
                <Legends>  
                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="True" Name="Default"  
                        LegendStyle="Row" />  
                </Legends>  
                <Series>  
                    <asp:Series Name="Default" />  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1" BorderWidth="0" />  
                </ChartAreas>  
             </asp:Chart>  
    </form>  
</body>  
</html> 