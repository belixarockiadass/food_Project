<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vvol.aspx.cs" Inherits="food.vvol" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Donation Details</title>
    <style> 
        body {
            background-image: url('image/dg3.gif');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        form {
            width: 80%;
            padding: 25px;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: blue;
            margin-bottom: 20px;
        }
        .gridview {
            width: 100%;
            border-collapse: collapse;
        }
        .gridview th, .gridview td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .gridview th {
            background-color: #FF5733;
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
        <div class="container">
            <h1>View Request Details</h1>
            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Qfood" HeaderText="Qfood" SortExpression="Qfood" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                   
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Qfood], [Category], [Address], [Mobile] FROM [vol]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
