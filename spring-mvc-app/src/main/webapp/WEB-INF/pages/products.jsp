<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
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
background-color:#ffffff;
border-radius:30px;
color:#000000;
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
<h1 style="font-size:30px;font-family:Georgia; ">Products</h1>
<a href="save_product" class="btn">Save Product</a>
<br>
<br>
<a href="update_product" class="btn">Update Product</a>
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
<a href="/" class="redirect">Go To Index</a>&nbsp;&nbsp;
<a href="orders" class="redirect">Go To Orders</a>
</body>
</html>