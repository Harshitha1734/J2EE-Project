<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<style>
body{
background-color:#008CBA;
}
.buttons{

margin-top:10%;
}
.btn{
background-color:#d5f4e6;
border-radius:8px;
border:none;
padding:10px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:30px;
}
.redirect{
background-color:#d5f4e6;
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
<h1 style="font-size:30px;">Orders</h1>
<a href="save_order" class="btn">Save Order</a><br>
<br>
<a href="update_order" class="btn">Update Order</a><br>
<br>
<a href="order_id" class="btn">Get Order by OrderId</a><br>
<br>
<a href="order_list" class="btn">Order Details</a>
</center>
<a href="/" class="redirect">Index</a>
<a href="products" class="redirect">Products</a>
</body>
</html>