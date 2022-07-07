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

     .container {
     width: 600px;
     min-height: 100px;
     height: auto;

     border: 1px solid #B4A392;
     border-radius: 6px;
     box-shadow: 0 1px 2px 1px rgba(130, 130, 130, 0.1);

     background-color: #B4A392;

     margin-top:50px;
     margin-left:350px;
     overflow: hidden;
     }
    
         .auto-style1 {
             height: 511px;
             width: 979px;
         }
         .auto-style2 {
             height: 550px;
             width: 600px;
             border: 1px solid #B4A392;
             border-radius: 6px;
             box-shadow: 0 1px 2px 1px rgba(130, 130, 130, 0.1);
             background-color: #B4A392;
             margin-top: 50px;
             margin-left: 350px;
             overflow: hidden;
             margin-bottom: 67px;
         }
    
         .auto-style3 {
             width: 773px;
             height: 233px;
             margin-left:20px;
         }
         
         .buttonpost {
             float: left;
             margin-left: 400px;
             margin-top: 10px;
             margin-bottom: 5px;

         }
    
         .auto-style5 {
             width: 190px;
         }
    
         .auto-style6 {
             width: 121px;
             height: 64px;
         }
         .auto-style7 {
             width: 190px;
             height: 64px;
             margin-top:10px;
         }
    
         .auto-style8 {
             width: 121px;
         }
        
         .commentpost {
             margin-left:40px;
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

    
    <div class="auto-style2">
   
        <form id="form1" runat="server" class="auto-style1">
                  
                 <%--Comment Post--%>
            <br />
            <br />
            <table class="commentpost">
                <tr>
                    <td class="auto-style8">
                         <asp:Label ID="Username" runat="server" Text="UserName" />
                    </td>

                    <td class="auto-style5">
                        <asp:TextBox ID="textUsername" runat="server" Width="151px" Height="25px" />
                    </td>
                </tr>

                <tr class="commentbox">
                    <td class="auto-style6">
                          <asp:Label ID="Comment" runat="server" Text="Comment" />
                    </td>

                    <td class="auto-style7">
                        <asp:TextBox ID="textComment" runat="server" Height="59px" Width="277px" />
                    </td>
                </tr> 
            </table>

            <div class="buttonpost">
                 <asp:Button ID="ButtonPost" runat="server" Text="Post"  OnClick="ButtonPost_Click" Height="29px" Width="56px"/>
             </div>

           <%--Comment Display--%>
            <br />
            <br />
            <br />
             <table class="auto-style3">
                <tr>
                    <td class="auto-style8">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <hr />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                                <br />
                                <div runat="server" innertext='<%#Eval("Comment") %>'> </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </td>
                </tr>
                </table>
               </form>
         </div>
    </body>
</html>