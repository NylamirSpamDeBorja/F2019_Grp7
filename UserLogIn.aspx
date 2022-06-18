<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogIn.aspx.cs" Inherits="WebCommunity.UserLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
 
        .centerform {
            position:absolute;
            top:150px;
            left:50%;
            transform: translate(-50%, 20%);
            width:400px;
            background: #8A6E52;
            border-radius:10px;
        }

        .centerform h1 {
            text-align:center;
            padding: 0 0 20px 0;
            border-bottom:1px solid silver;
        }

        .table {
            padding: 0 40px;
            font-size:16px;
        }

        
        .loginbutton {
            margin-top:10px;
            margin-left: 100px;
            margin-bottom: 10px;
            background: #B4A392;
            border: 1px solid #B4A392;  
            border-radius:12px; 
            font-size:16px;
            color:white;
            font-weight:300;
            cursor:pointer;
            outline:none;       

        } 

     

    </style>
</head>
<body style="background-image: url('Breaking-Story-HBCU-1024x576.png');  background-repeat:no-repeat;
    background-attachment:fixed; background-size: cover;">

    <div class ="centerform">
        <h1> Login </h1>

    <form id="form1" runat="server">
    
          <div class ="table">
            
               <table>
                   <tr>
                    <td> 
                        <asp:Label Text="User Name" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtUsername" runat="server" />
                    </td>
                </tr>

                  <tr>
                    <td> 
                        <asp:Label Text="Password" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                    </td>
                </tr>


                    <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                    </td>
                </tr>

                </table>

               <asp:Button ID="Login" runat="server" Text="Login" CssClass="loginbutton" Width="102px" padding="0 10px" Height="28px" OnClick="Login_Click"/> 
    </div>

      
    </form>

        </div>
</body>
</html>
