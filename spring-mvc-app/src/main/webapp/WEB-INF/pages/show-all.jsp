<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
body{
 background-color:#C0C0C0;
}
.redirect{
background-color:#808080;
color:#ffffff;
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
<body class="p-4 w-100">

<center>
<h1 style="font-size:30px;font-family:Georgia;">Products</h1></center>
<table class="table table-striped border" style="background-color:#808080;">
	<thead style="color:#ffffff">
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Merchant Name</th>
			<th>Inventory</th>
			<th>Amount</th>
		</tr>
	</thead>
<tbody>
<c:forEach items="${list}" var="each">
<tr>
		<td>${each.productId}</td>
		<td>${each.productName}</td>
		<td>${each.merchantName}</td>
		<td>${each.inventory}</td>
		<td>${each.amount}</td>
		
		
	</tr>
</c:forEach>
</tbody>
</table>
<a href="products" class="redirect">Go To Products</a>
</body>
</html>