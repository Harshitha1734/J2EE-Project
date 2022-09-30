<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Order By User Name</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
body{
background-color:#808080;
font-family:Georgia;
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
<h1 style="text-align:center;">Get Order By User Name</h1>
<form action="" method="post"class="form w-50 border rounded p-2" style="color:#000000;background-color:#b4b4b4;" >
   
   <div class="form-group">
   <label for="userName"><b>User Name:</b></label>
   <input required type="text" name="user" id="user" class="form-control"/>
   </div>
   <br>
    <div class="form-group d-flex justify-content-center">
  <input type="submit" value="Find" name="oper" class="btn btn-outline-success w-50" />
   </div>
   
    
   </form>
   <a href="orders" class="redirect mt-2">Go to Orders</a>
</body>
</html>