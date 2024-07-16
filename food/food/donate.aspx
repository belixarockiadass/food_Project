<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donate.aspx.cs" Inherits="food.donate" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fixed Sidebar</title>
    <style>
        body {
            margin-left: 25px;
            font-family: Arial, sans-serif;
            background-image: url('image/f3.jpg'); 
           
             background-size: cover;
            background-repeat: no-repeat;
        }
        .sidebar {
            height: 100%;
            width: 250px; /* Set your preferred width */
            position: fixed;
            top: 0;
            left: 0;
            background-color: #FDF1FF;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .sidebar a {
            padding: 10px 20px;
            text-decoration: none;
            font-size: 18px;
            color: black;
            display: block;
        }
        .sidebar a:hover {
            background-color: yellowgreen;
        }
        .content {
            margin-left: 250px; /* Adjust margin to match sidebar width */
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <a href="viewfooddonation.aspx">View Food Donation</a>
        <a href="vreq.aspx">View Requst Details</a>
         <a href="upstatus.aspx">Update Status</a>
        
         <a href="advol.aspx">Add Volunteers</a>
        <a href="firsthome.aspx">Logout</a>
       
        <!-- Add more links as needed -->
    </div>
    <div class="content">
        
       
        
    </div>
</body>
</html>
