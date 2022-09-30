<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<style>
body{
 background-color:#808080;	
        padding: 0%;
        margin: 0%;
}
.buttons{

margin-top:10%;
}
.btn{
color:#000000;
background-color:#ffffff;
border-radius:30px;
border:none;
padding:10px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:25px;
}
.btn:hover {
  background-color: #000000;
  color: white;
}
.redirect{
background-color:#ffffff;
color:#000000;
border-radius:8px;
border:none;
padding:2px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:20px;
}
.redirect:hover {
  background-color: #000000;
  color: white;
}
</style>
</head>
<body>
<center>
<h1 style="font-size:30px;font-family:Georgia;">Orders</h1>
<a href="save_order" class="btn">Save Order</a><br>
<br>
<a href="update_order" class="btn">Update Order</a><br>
<br>
<a href="order_id" class="btn">Get Order by OrderId</a><br>
<br>
<a href="user" class="btn">Get User Orders</a><br>
<br>
<a href="order_list" class="btn">Order Details</a>
</center>
<a href="/" class="redirect">Go To Index</a>&nbsp;&nbsp;
<a href="products" class="redirect">Go To Products</a>
</body>
</html>