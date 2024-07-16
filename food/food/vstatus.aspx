<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vstatus.aspx.cs" Inherits="food.vstatus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Donation Details</title>
    <style> 
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/kk.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh; /* Full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        form {
            width: 80%;
            padding: 20px;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: fuchsia;
            font-weight: bold;
            margin-bottom: 20px;
        }
        /* Style for the GridView */
        .gridview {
            width: 100%;
            border-collapse: collapse;
        }
        .gridview th, .gridview td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .gridview th {
            background-color: blue;
            color: white;
            font-weight: bold;
        }
        .gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .gridview tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
   
<body>
    <form id="form" runat="server">
        <div><h1>View Donation Details</h1></div>
        <div>
            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Mobile], [Description] FROM [up]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

