<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Id</title>
<style>
body{
background-color:#b4b4b4;
}
.redirect{
background-color:#ffffff;
border-radius:8px;
border:none;
padding:2px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:20px;
}
</style>
</head>
<body>
<center>
<h1>Get Order By Order Id</h1>
<form method="post" action="">
<label for="orderid">Order ID</label>
<input type="text" name="orderId" id="orderId"><br><br>
<input type="submit" value="Find">
</center>
<a href="orders" class="redirect">Orders</a>
</body>
</html>