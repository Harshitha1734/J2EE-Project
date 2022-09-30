<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Order</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
body{
background-color:#808080;
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
<body class="d-flex flex-column align-items-center">
<h1 style="text-align:center;">Add Order</h1>

<form action="" method="post"class="form w-50 border rounded p-2" style="color:#000000;background-color:#b4b4b4;" >
   
   <div class="form-group">
   <label for="id" ><b>Order Id:</b></label>
   <input required type="text" name="id" id="id" class="form-control"/>
   </div>
   <br>
   <div class="form-group">
   <label for="customerName"><b>Customer Name</b></label>
   <input required type="text" name="customerName" id="customerName" class="form-control"/>
   </div>
    <br>
    <div class="form-group">
   <label for="productId"><b>Product Id</b></label>
   <input required type="text" name="productId" id="productId" class="form-control"/>
   </div>
    <br>
    <div class="form-group">
   <label for="quantity"><b>Quantity</b></label>
   <input required type="text" name="quantity" id="quantity" class="form-control"/>
   </div>
    <br>
   <div class="form-group">
   <label for="orderDate"><b>Order Date</b></label>
   <input required type="date" name="orderDate" id="orderDate" class="form-control"/>
   </div>
   <br>
    <div class="form-group d-flex justify-content-center">
  <input  type="submit" value="ADD" name="oper" class="btn btn-outline-success w-50" />
   </div>
   
    
   </form>
   <br>
   <p style="color:#ffffff">${created}</p>
   <a href="product_list" class="redirect mt-2" target="_blank">View Available Products</a>&nbsp;&nbsp;
   <a href="orders" class="redirect mt-2">Go To Orders</a>
</body>
</html>