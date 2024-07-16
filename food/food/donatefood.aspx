<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donatefood.aspx.cs" Inherits="food.donatefood" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DONATE FOOD</title>
<link rel="stylesheet" href="css/AddProduct.css">
</head>
<body>
<div class="main">
	<div class="topbar1"></div>
	<div class="topbar2">
		<div class="container1">
			<div class="logout-btn">
				<a href="firsthome.aspx">Logout</a>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="container2">
			
		</div>
	</div>
</div>
<div class="active">
	<div class="filler"></div>
		<h2>DONATE FOODS</h2>
		<form id="form" runat="server">
			<div class="bigcard">
				<div class="bigcard1">
					<h3>Enter Donor Name</h3>
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
					<h3>Enter Date of Donation</h3>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" ></asp:TextBox>
&nbsp;<h3>Enter Quantity of Food</h3><asp:TextBox runat="server"></asp:TextBox>
					<h3>Enter Manufacturer Name</h3><input type='text' name='mfname' required>
					<h3>Enter Manufacture Date</h3><input type="text" name="mdate" placeholder="YYYY-MM-DD" onkeypress="return event.charCode>= 48 && event.charCode<= 57 || event.charCode==45" required>
					<h3>Enter Expiry Date</h3><input type="text" name="edate" placeholder="YYYY-MM-DD" onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" required>
    		  	</div>
  		    	<div class="bigcard2">
   					 <h3>Quantity</h3><input type="text" name="quantity" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
   					 <h3>Price</h3><input type="text" name="price" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
   					 <p></p>
 					 <input type="submit" value="Add">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
