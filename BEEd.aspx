<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BEEd.aspx.cs" Inherits="WebCommunity.BEEd" %>

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

     .postbox {
     width: 600px;
     min-height: 100px;
     height: auto;

     border: 1px solid #B4A392;
     border-radius: 6px;
     box-shadow: 0 1px 2px 1px rgba(130, 130, 130, 0.1);

     background-color: #B4A392;

     margin-top:50px;
     margin-left:300px;
     overflow: hidden;
     }

     .post_header {
     background-color: #B4A392;
     color: #3f5563;
     }
     
     .post_title {
         font-size: 14px;
         padding-top:10px;
         padding-left:10px;
     }

     .post_content {
     width: 100%;
     height: 50%;
     }

     .postbutton {
     float:right;
     margin-top: 10px;
     margin-bottom: 10px;
     margin-right:10px;
     height: 20px;
     width: 70px;
     }
   
    </style>
</head>
<body class="body">

      <div class="navbar">
        <p> Welcome to BEEd </p>
        <a href="welcomepage.html">sign-out</a>
        <a href="#">dashboard</a>
        <a href="Profile.aspx">profile</a>
    </div>

     <div class="postbox">

         <div class="post_header">
             <h2 class="post_title"> Post It</h2>
         </div>

    <form id="form1" runat="server">   

        <div class="post_content">

            <table>
                <tr>
                    <td> 
                         <asp:TextBox ID="postmessage" runat="server" Height="63px" Width="584px" />
                    </td>
                </tr>
            </table>     
        </div>

        <div class="auto-style1">
                
           <asp:Button ID="BtnPost" runat="server" Text="Post" CssClass="postbutton" />
                
        </div>

    </form>
        
    

     </div>

     <div>
    </div>
  
</body>
</html>
