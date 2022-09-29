<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
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
<h1 style="font-size:30px;">Products</h1>
<a href="save_product" class="btn">Save Product</a>
<br>
<br>
<a href="save_product" class="btn">Update Product</a>
<br>
<br>
<a href="merchant" class="btn">Get Product By Merchant</a>
<br>
<br>
<a href="inventory" class="btn">Inventory Available</a>
<br>
<br>
<a href="inventory_zero" class="btn">Inventory Not Available</a>
<br>
<br>
<a href="product_list" class="btn">Product Details</a>
</center>
<a href="/" class="redirect">Index</a>
<a href="orders" class="redirect">Orders</a>
</body>
</html>