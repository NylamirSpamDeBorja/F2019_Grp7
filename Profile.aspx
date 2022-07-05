<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebCommunity.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
        background-image: url('Breaking-Story-HBCU-1024x576.png');  
        background-repeat:no-repeat;  
        background-attachment:fixed;  
        background-size: cover;
        }
        .wrapper{
        position: absolute;
        top: 50%;
        Left: 50%;
        transform: translate(-50%, -50%);
        width:450px;
        display: flex;
        box-shadow: 0 1px 20px 0 rgba(69, 90,100,0.08)
        }
        .wrapper .left{
        width: 35%;
        background: #8A6E52;
        padding: 30px 25px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        text-align: center;
        color: #fff;
        }
        .wrapper .left img{
        margin-bottom: 10px;
        border-radius: 5px;
        }
        .wrapper .left h4{
        margin-bottom: 10px;
        }
        .wrapper .right{
        width: 65%;
        background-color:#DBCABA; 
        padding: 30px 25px;
        border-top-right-radius: 5px;
        border-bottom-right-radius: 5px;
        padding:30px 25px;
        text-align: center;
        color: #fff;
        }
        .wrapper .right .info h3{
        margin-bottom: 15px;
        padding-bottom: 5px;
        border-bottom: 1px solid #e0e0e0;
        color: #353c4e;
        text-transform: uppercase;
        letter-spacing: 5px; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class ="wrapper">
        <div class="left">
            <img src="user.png" alt="user" width="100"/>
            <h4>Name</h4>
            <h4>Username</h4>
            <ul>
                <li><img src="edit.png"><a href="edit settings">Edit Profile</a></li>
            </ul>
        </div>
        <div class="right">
            <div class="info">
                <h3>information</h3>
                <div class="info_data">
                    <div class="data">
                        <h4>Email</h4>
                        <li><a href="Email.asp"></a></li>
                    </div>
                    <div class="data">
                        <h4>Course</h4>
                        <li><a href="Course.asp"></a></li>
                    </div>
                    <div class="data">
                        <h4>Gender</h4>
                        <li><a href="Gender.asp"></a></li>
                    </div>
                    <div class="data">
                        <h4>Birthday</h4>
                        <li><a href="Birthday.asp"></a></li>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>