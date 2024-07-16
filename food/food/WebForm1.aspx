<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="food.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Donate Food</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/fd8.jpg'); /* Replace with your image URL */
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
        input[type="text"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        textarea,
        select {
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
            background-color: red;
            color: black;
            font-size:large;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: aqua;
        }
    </style>
</head>
<body>
   
    <form id="form" runat="server">
        

   <h1 style="font-family: 'Arial Black'; font-size: 30px; font-weight: bolder; color: #FF0066"> Donate Food
</h1>        
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Please Enter Your Username"></asp:TextBox>
        <br>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="55px" Width="139px">
            <asp:ListItem>Hotel</asp:ListItem>
            <asp:ListItem>Marriage Hall</asp:ListItem>
            <asp:ListItem>Other function</asp:ListItem>
        </asp:DropDownList>
        <br>
        <br>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Please Enter Your Donation Date" TextMode="Date" Height="23px" Width="127px"></asp:TextBox>
        <br>
        <br>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Please Enter Your Contact Person Name"></asp:TextBox>
        <br>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Please Enter Your Contact Person Mobile Number"></asp:TextBox>
       
        <br>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Please Enter Your Location"></asp:TextBox>
        <br>
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Please Enter Quantity of Food" Height="26px" TextMode="Number" Width="129px"  ></asp:TextBox>
        <br>
        <br>
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Please Enter Description"  TextMode="Multiline"></asp:TextBox>
        <br>
        <br>
        <asp:Button ID="Button1" runat="server" Text="Donate" OnClick="Button1_Click" />
        <br>
        <br>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [donfood]"></asp:SqlDataSource>
    </form>

</body>
</html>