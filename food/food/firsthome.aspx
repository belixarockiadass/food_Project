<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firsthome.aspx.cs" Inherits="food.firsthome" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="css/index.css">
    <style>
		body {
            background-image: url("image/J.jpg");
            background-size: cover; /* Adjust to cover, contain, or specific dimensions */
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .top-bar {
            background-color: coral;
            
            padding: 20px;
            text-align: center;
            color:aqua;

        }
         .menu-bar {
            background-color: white;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .top-bar a {
            margin-left: 20px;
            padding: 10px 10px;
            background-color: rgb(88, 158, 209);
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.2s ease;
            text-decoration: none; /* Remove underline */
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .top-bar a:hover {
            background-color: rgb(72, 14, 120);
            transform: scale(1.05);
        }

        /* Additional styles for container and indexbox */
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 150px;
        }
        .indexbox {
            background-image: url("image/G.gif");
            background-color:color-mix(in srgb, color percentage, color percentage);
            padding: 130px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgb(199, 194, 46);
            text-align: center;
            position:fixed
        }
        .indexbox h2 {
            color: rgb(252, 235, 135);
            font-size: 29px;
            margin-bottom: 20px;
        }
        .button1 {
            display: block;
            width: 100%;
            max-width: 200px;
            margin: 20px auto;
            padding: 12px 20px;
            background-color: rgb(88, 158, 209);
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 15px;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .button1:hover {
            background-color: rgb(72, 14, 120);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="menu-bar" style="color: #FF0066; font-family: 'Lucida Bright'; font-size: 50px; font-style: oblique; text-transform: uppercase; font-weight: 900;">FOOD DONATION PORTAL</div>
    <div class="top-bar">
        <a href="about.aspx">ABOUT</a>
         <a href="ngo1.aspx">NGO</a>
        <a href="donlog.aspx">DONOR</a>
         <a href="req.aspx">REQUEST FOOD</a>
         <a href="vstatus.aspx">STATUS</a>
         <a href="vvol.aspx">Volunteer</a>
        <a href="contact.aspx">Contact us</a>

    </div>

    <div class="container">
       
            <h2></h2>
            
        </div>
    
</body>
</html>