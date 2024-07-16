<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upstatus.aspx.cs" Inherits="food.upstatus" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>Register</title>
    
    <style>
        body {
             background-image: url('image/f1.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh; /* Full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 300px;
        }
        .registerbox {
            background-color: aquamarine;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            align-content: center;
        }
        h1 {
            text-align: center;
            color: blue;
            margin-top: 90px; /* Adjusted margin */
        }
        h2 {
            text-align: center;
            color: crimson;
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
            background-color: blue;
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
                 <h1><marquee>FOOD DONATION PORTAL</marquee></h1>
                <h2>Update Status</h2>
                
                <asp:TextBox ID="txtName" runat="server" placeholder="Name" ></asp:TextBox>
                <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile" ></asp:TextBox>
                  <br />
                 <br />
                 <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" placeholder="Description" Width="294px"></asp:TextBox>
                <br />
               <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Request" OnClick="btnSubmit_Click"   />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
