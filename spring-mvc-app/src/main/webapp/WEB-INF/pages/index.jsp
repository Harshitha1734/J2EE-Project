<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
body{
        background-color:#808080;	
        padding: 0%;
        margin: 0%;
}
.buttons{

margin-top:6%;
}
.btn{
color:#000000;
background-color:#ffffff;
border-radius:30px;
border:none;
padding:15px;
text-align:center;
text-decoration:none;
display:inline-block;
font-size:30px;}

.btn:hover {
  background-color: #000000;
  color: white;
}
h1 {
    position: relative;
    font-size: 30px;
    z-index: 1;
    overflow: hidden;
    text-align: center;
}
h1:before, h1:after {
    position: absolute;
    top: 51%;
    overflow: hidden;
    width: 50%;
    height: 1px;
    content: '\a0';
    background-color: #ffffff;
}
h1:before {
    margin-left: -50%;
    text-align: right;
}



</style>
</head>
<body>
<center>
<br>
<br>

<h1 style="font-size:50px;font-family:Georgia;">Ecommerce Store</h1>

<div class="buttons">
<a href="products" class="btn">Products</a>
<br>
<br>
<br>
<a href="orders" class="btn">Orders</a>
</div>
</center>

</body>
</html>