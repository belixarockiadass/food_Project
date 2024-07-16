<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vreq.aspx.cs" Inherits="food.vreq" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Donation Details</title>
    <style> 
        body {
             background-image: url('image/fd7.gif'); /* Replace with your image URL */
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
            padding: 25px;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: blue;
            margin-bottom: 20px;
        }
        /* Style for the GridView */
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
        
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Desc" HeaderText="Description" SortExpression="Desc" />
                 <asp:TemplateField>
                   <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" ItemStyle-Width="30%" CommandArgument = '<%#Eval("Id")%>' runat = "server" OnClick = "DeleteFile"  />
            </ItemTemplate>
                      
                  </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                <asp:HyperLink runat="server" ItemStyle-Width="30%" NavigateUrl="upstatus.aspx">Update Status</asp:HyperLink>
            </ItemTemplate>
                      
                  </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Mobile], [Address], [Email], [Desc] FROM [req]"></asp:SqlDataSource>
     
             </div>
             </form>
   
</body>
</html>

