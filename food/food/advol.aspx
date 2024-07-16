<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advol.aspx.cs" Inherits="food.advol" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Volunteer Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("image/a4.jpg");
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 600px;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: colorChange 8s infinite alternate;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: grid;
            grid-gap: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        @keyframes colorChange {
            0% {
                background-color: #fff;
            }
            50% {
                background-color: #f9f3c2;
            }
            100% {
                background-color: #fff;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Volunteer Form</h1>
         <form id="form" runat="server">
            <div>
                <label for="name">Name:</label>
                <asp:TextBox runat="server" ID="txtName" placeholder="Enter your name"></asp:TextBox>
            </div>
            <div>
                <label for="quantity">Quantity of Food:</label>
                <asp:TextBox runat="server" ID="txtQuantity"  placeholder="Enter your Quantity of food"></asp:TextBox>
            </div>
            <div>
                <label for="category">Category:</label>
                <asp:DropDownList ID="txtcat" runat="server">
                    <asp:ListItem>Marriage Hall</asp:ListItem>
                    <asp:ListItem>Hotel</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label for="category">Address</label>
               <asp:TextBox runat="server" ID="txtAddress"  placeholder="Enter your address"></asp:TextBox>
                
            </div>
            <div>
                  <label for="category">Mobile</label>
                <asp:TextBox runat="server" ID="txtMobile"  placeholder="Enter your mobile number"></asp:TextBox>
                
            </div>
           <asp:Button ID="Button" runat="server" Text="Add" CssClass="btn" OnClick="Button_Click" ></asp:Button>
        </form>
    </div>
</body>
</html>
