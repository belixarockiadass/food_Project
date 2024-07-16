<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ngo1.aspx.cs" Inherits="food.ngo1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ngo Registration</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/A.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh; /* Full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        form {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        }

        /* Form header styles */
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        /* Form input styles */
        input[type="text"],
        input[type="password"]
         {
            width: calc(100% - 10px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            color: #333;
        }
        /* Submit button styles */
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 3px;
            background-color: blue;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="button"]:hover {
            background-color: blue;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">

   <h1> NGO LOGIN
</h1>        <asp:TextBox ID="TextBox1" runat="server" placeholder="Pls Enter Ur Username"></asp:TextBox>
        <br>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Pls Enter Ur Password" TextMode="Password"></asp:TextBox>
        <br>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ad]"></asp:SqlDataSource>
        </form>
</body>
</html>
