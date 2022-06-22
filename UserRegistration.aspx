<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebCommunity.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
 
        .centerform {
            position:absolute;
            top:0;
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

        .submitbutton {
            margin-top:10px;
            margin-left: 100px;
            width:100%;
            background: #B4A392;
            border: 1px solid #B4A392;  
            border-radius:25px; 
            height:30px;          
            font-size:16px;
            color:white;
            font-weight:300;
            cursor:pointer;
            outline:none;   
        }

        .Sign-in{
            margin-top:10px;
            text-align:center;
            padding: 0 0 20px 0;           
        }

        .Sign-in a {
             text-decoration: none;
             color:lightskyblue;
             letter-spacing:2px;

        }
    </style>
</head>
<body style="background-image: url('Breaking-Story-HBCU-1024x576.png');  background-repeat:no-repeat;
    background-attachment:fixed; background-size: cover;">

    <div class="centerform">
        <h1>Register</h1>

      <form id="form1" runat="server">

         <div class ="table">

            <table>
                <tr>
                    <td> 
                        <asp:Label Text="First Name" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtFirstName" runat="server" />
                    </td>
                </tr>

                 <tr>
                    <td> 
                        <asp:Label Text="Last Name" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtLastName" runat="server" />
                    </td>
                </tr>

                 <tr>
                    <td> 
                        <asp:Label Text="Gender" runat="server"/>
                    </td>        
                    <td colspan="2"> 
                        <asp:DropDownList ID="ddlGender" runat="server" Height="25px" Width="129px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Prefer Not To Say</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                 <tr>
                    <td> 
                        <asp:Label Text="Email" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtEmail" runat="server" />
                    </td>
                </tr>

                  <tr>
                    <td> 
                        <asp:Label Text="Course" runat="server"/>
                    </td>        
                    <td colspan="2"> 
                         <asp:DropDownList ID="ddlCourse" runat="server" Height="25px" Width="129px">
                             <asp:ListItem>BEEd</asp:ListItem>
                             <asp:ListItem>BSEd</asp:ListItem>
                             <asp:ListItem>BSBA</asp:ListItem>
                             <asp:ListItem>BSBM</asp:ListItem>
                             <asp:ListItem>BSIT</asp:ListItem>
                             <asp:ListItem>BSCS</asp:ListItem>
                             <asp:ListItem>BSIS</asp:ListItem>
                             <asp:ListItem>BSOA</asp:ListItem>
                             <asp:ListItem>BSPA</asp:ListItem>
                             <asp:ListItem>BSEM</asp:ListItem>
                             <asp:ListItem>BSCRIM</asp:ListItem>
                             <asp:ListItem>BSPSYCH</asp:ListItem>
                             <asp:ListItem>BSCE</asp:ListItem>
                             <asp:ListItem>BSIE</asp:ListItem>
                             <asp:ListItem>BSME</asp:ListItem>
                             <asp:ListItem>BSHRM</asp:ListItem>
                             <asp:ListItem>BSTM</asp:ListItem>
                             <asp:ListItem>BSTrM</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                </tr>

                   <tr>
                    <td> 
                        <asp:Label Text="Student Year" runat="server"/>
                    </td>
                    <td colspan="2"> 
                         <asp:DropDownList ID="ddlStudentYear" runat="server" Height="25px" Width="129px">
                             <asp:ListItem>1st Year</asp:ListItem>
                             <asp:ListItem>2nd Year</asp:ListItem>
                             <asp:ListItem>3rd Year</asp:ListItem>
                             <asp:ListItem>4th Year</asp:ListItem>
                             <asp:ListItem>5th Year</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                </tr>

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
                    <td> 
                        <asp:Label Text="Confirm Password" runat="server"/>
                    </td>
                    <td colspan="2"> 
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
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
    
             <div class="buttonsubmit">
                        <asp:Button Text="Submit" ID="btnSubmit" runat="server" CssClass="submitbutton" Width="147px" OnClick="btnSubmit_Click" /> 
 
            </div>       
                


          <div class="Sign-in">
              Already have an  account? <a href="UserLogIn.aspx"> Sign-in </a>
         </div>
            </div>        
          
        </form>
    </div>
</body>
</html>
