<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
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
<h1 style="text-align:center;">Add Product</h1>
<form action="" method="post"class="form w-50 border rounded p-2" style="color:#000000;background-color:#b4b4b4;" >
 
  
    <div Class="form-group">
   <label for="merchant"><b>Merchant Name</b></label>
   <input required type="text" name="merchant" id="merchant" Class="form-control"/>
   </div>
   <br>
 
  
    <div Class="form-group d-flex justify-content-center">
  <input  type="submit" value="Find" name="oper" class="btn btn-outline-success w-50" />
   </div>
   
    
   </form>

  <a href="products" class="redirect mt-2">Go To Products</a>
</body>
</html>