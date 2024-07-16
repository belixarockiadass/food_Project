<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewfooddonation.aspx.cs" Inherits="food.viewfooddonation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Donation Details</title>
    <style> 
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/f6.jpg'); /* Replace with your image URL */
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
            color: #FF0000;
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
            background-color: #FF0000;
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
            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="Dname" HeaderText="Name" SortExpression="Dname" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Person" HeaderText="Person" SortExpression="Person" />
                    <asp:BoundField DataField="Cpmobile" HeaderText="Mobile" SortExpression="Cpmobile" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Qfood" HeaderText="Quantity" SortExpression="Qfood" />
                    <asp:BoundField DataField="Desc" HeaderText="Description" SortExpression="Desc" />
                    <asp:TemplateField>
                   <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" ItemStyle-Width="30%" CommandArgument = '<%#Eval("Id")%>' runat = "server" OnClick = "DeleteFile"  />
            </ItemTemplate>
                  </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Dname], [Category], [Date], [Person], [Cpmobile], [Location], [Qfood], [Desc] FROM [donfood]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

