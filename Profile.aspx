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
        navbar a {
        float: right;
        font-size: 18px;
        color: white;
        text-align: center;
        padding: 18px 14px;
        text-decoration: none;
        text-transform: uppercase;
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
        width: 500px;
        height; 400px;
        background: #8A6E52;
        padding: 30px 25px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        text-align: center;
        color: #fff;
        }
        .wrapper .left .img{
        height: 200px;
        width: 200px;
        margin-bottom: 10px;
        border-radius: 50%;
        }
        .wrapper .left h4{
        margin-bottom: 10px;
        }
        .wrapper .right{
        width: 650px;
        height; 400px;
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
    <div class="navbar">
        <p> Welcome to Student Webmmunity </p>
        <a href="welcomepage.html">sign-out</a>
        <a href="#">dashboard</a>
        <a href="welcomepage.html">profile</a>
    </div>
    <form id="form1" runat="server">
    <div class ="wrapper">
        <div class="left">
            <img src="user.png" id="photo"> 
            <h3>Username</h3>
        </div>
        <div class="right">
            <div class="info">
                <h2>information</h2>
                <div class="info_data">
                    <div class="data">
                        <h3>Email</h3>
                    </div>
                    <div class="data">
                        <h3>Course</h3>
                    </div>
                    <div class="data">
                        <h3>Gender</h3>
                    </div>
                    <div class="data">
                        <h3>Birthday</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>