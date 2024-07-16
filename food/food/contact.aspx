<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="food.contact" %>

<!DOCTYPE html>
<html>
<head>
   <title>Google Map Example</title>
   <style>
      /* Add styles to the map container */
      body {
         color: green;
         background-color: aliceblue;
         font-family: 'Courier New', Courier, monospace;
         margin: 0; /* Remove default body margin */
         padding: 0; /* Remove default body padding */
      }
      h1 {
         text-align: center; /* Center align the heading */
         padding: 20px 0; /* Add some padding around the heading */
      }
      .map-container {
         width: 100%;
         height: 400px;
         margin: 20px 0;
         /* Add a border and shadow to the container */
         border: 1px solid gray;
         box-shadow: 2px 2px 5px #ccc;
         /* Ensure the map fills the container */
         overflow: hidden; /* Hide overflowing content */
         border-radius: 5px; /* Add some border radius for a rounded look */
      }
   </style>
</head>
<body>
   <h1>FOOD DONATION PORTAL</h1>
   <div class="map-container">
      <iframe width="100%" 
         height="100%" 
         frameborder="0" 
         scrolling="no" 
         marginheight="0"
         marginwidth="0" 
         id="gmap_canvas" 
         src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=%20+(ARUNAI%20ENGINEERING%20COLLEGE)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
      </iframe>
   </div>
</body>
</html>
