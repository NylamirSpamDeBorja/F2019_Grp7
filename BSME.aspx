<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BSME.aspx.cs" Inherits="WebCommunity.BSME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

         <style>

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
    </style>
</head>
<body class="body">

    <div class="navbar">
        <p> Welcome to BSME </p>
        <a href="welcomepage.html">sign-out</a>
        <a href="#">dashboard</a>
        <a href="welcomepage.html">profile</a>
    </div>

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
