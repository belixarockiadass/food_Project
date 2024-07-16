<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="food.about" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Food Donation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            animation: colorChange 8s infinite alternate;
        }

        .content {
            text-align: center;
            max-width: 800px;
            padding: 40px;
            background-color: rgb(152, 204, 130);
            background-image: url("image/a2.jfif"); /* corrected syntax */
            background-size: cover;
            background-position: center;
            border-radius: 10px;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
            /* Additional styles */
            color: #333;
            margin: 20px;
            border: 1px solid #ccc;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            color: black;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .food-image {
            width: 220px;
            border-radius: 50%;
            margin: 20px auto;
            animation: zoom 2s infinite alternate;
        }

        .btn-container {
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #45a049;
        }

        @keyframes colorChange {
            0% {
                background-color: rgb(220, 204, 114);
            }
            100% {
                background-color: #cce5ff;
            }
        }

        @keyframes zoom {
            0% {
                transform: scale(1);
            }
            100% {
                transform: scale(1.1);
            }
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Online Food Donation</h1>
        <img src="image/a3.gif" alt="Food Donation" class="food-image">
        <p style="color: #000000; font-size: larger; font-weight: bolder">
            Online food donation is a convenient way to support those in need. With just a few clicks, you can contribute to providing meals for individuals and families facing food insecurity. Your donations help organizations distribute food to shelters, community centers, and directly to those who need it most.
        </p>
        <p  style="color: #000000; font-size: larger; font-weight: bolder">
            By donating online, you can make an impact from the comfort of your home. Whether it's a one-time donation or a recurring contribution, every bit counts towards creating a hunger-free community.
        </p>
        <div class="btn-container">
            <a href="donlog.aspx" class="btn">Donate Now</a>
        </div>
    </div>
</body>
</html>
