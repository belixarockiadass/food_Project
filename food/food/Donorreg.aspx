<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donorreg.aspx.cs" Inherits="food.Donorreg" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="css/Register.css">
</head>
<body>
	<form id="form" runat="server">
		<div class="container">
			<div class="registerbox">
				<h2 style="color: #FF0000; font-family: Georgia, 'Times New Roman', Times, serif; font-size: 50px; font-weight: 900">Donor Registration</h2>
				<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter ur Username"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Enter ur Password" TextMode="Password"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="Enter ur Email" ></asp:TextBox><br /><br />
                <br />



&nbsp;<asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Font-Bold="True" Font-Size="Large" />
&nbsp;</div>
			<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [donreg]"></asp:SqlDataSource>
		</div>
	</form>
</body>
</html>