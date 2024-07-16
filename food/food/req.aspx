<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="req.aspx.cs" Inherits="food.req" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>Register</title>
    <h1 style="color: #0000FF"><marquee>FOOD DONATION PORTAL</marquee></h1>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: coral;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .registerbox {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: brown;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <div class="container">
            <div class="registerbox">
                <h2>Food Request</h2>
                <asp:TextBox ID="txtName" runat="server" placeholder="Name" ></asp:TextBox>
                <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile" ></asp:TextBox>
                <asp:TextBox ID="txtAddress" runat="server" placeholder="Address" ></asp:TextBox>
                <br />
               
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email" Width="388px" Height="35px" ></asp:TextBox>
                <br />
                 <br />
                 <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" placeholder="Description" Width="389px"></asp:TextBox>
                <br />
               <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Request" OnClick="btnSubmit_Click"   />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [req]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
