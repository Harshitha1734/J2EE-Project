<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update product</title>
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
<h1 style="text-align:center;">Update Product</h1>
<form action="update_product" method="post"class="form w-50 border rounded p-2" style="color:#000000;background-color:#b4b4b4;" >   
   <div Class="form-group">
   <label for="id"><b>Product Id:</b></label>
   <input required type="text" name="id" id="id" Class="form-control"/>
   </div>
   <br>

   <div Class="form-group">
   <label for="productName"><b>Product Name</b></label>
   <input required type="text" name="productName" id="productName" Class="form-control"/>
   </div>
   <br>
  
    <div Class="form-group">
   <label for="merchantName"><b>Merchant Name</b></label>
   <input required type="text" name="merchantName" id="merchantName" Class="form-control"/>
   </div>
   <br>
 
    <div Class="form-group">
   <label for="inventory"><b>Inventory</b></label>
   <input required type="text" name="inventory" id="inventory" Class="form-control"/>
   </div>
   <br>
 
   <div Class="form-group">
   <label for="amount"><b>Amount</b></label>
   <input required type="text" name="amount" id="amount" Class="form-control"/>
   </div>
   <br>
  
    <div Class="form-group d-flex justify-content-center">
  <input type="submit" value="Update" name="oper" class="btn btn-outline-success w-50" />
   </div>
   
    
   </form>
<br>
   
     <p style="color:#ffffff">${created}</p>
     <br>
  <a href="products" class="redirect mt-2">Go To Products</a>
</body>
</html>