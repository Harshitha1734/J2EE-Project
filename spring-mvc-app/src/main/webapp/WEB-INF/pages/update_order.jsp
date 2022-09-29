<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>

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
<h1>Update Order</h1>
<form action="" method="post">
   
   <div Class="form-group">
   <label for="id">order Id:</label>
   <input required type="text" name="id" id="id" Class="form-control"/>
   </div>
   
   <div Class="form-group">
   <label for="customerName">customer Name</label>
   <input required type="text" name="customerName" id="customerName" Class="form-control"/>
   </div>
   
   <div Class="form-group">
   <label for="productId">product Id</label>
   <input required type="text" name="productId" id="productId" Class="form-control"/>
   </div>
   
    <div Class="form-group">
   <label for="quantity">quantity</label>
   <input required type="text" name="quantity" id="quantity" Class="form-control"/>
   </div>
   
   <div Class="form-group">
   <label for="orderDate">Order Date</label>
   <input required type="date" name="orderDate" id="orderDate" Class="form-control"/>
   </div>
   
    <div Class="form-group">
  <input type="submit" value="ADD" name="oper" class="btn btn-info" />
   </div>
   
    
   </form>
 </center> 
 <a href="orders" class="redirect">Orders</a> 
</body>
</html>