<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Product details</title>
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
<h1>Products</h1></center>
<table class="table table-striped">
	<thead>
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
<a href="products" class="redirect">Products</a>
<nav aria-label="Page navigation example">  
	<ul class="pagination">    
	<li class="page-item">      
	<a class="page-link" href="#" aria-label="Previous">       
	 <span aria-hidden="true">&laquo;</span>     
	    <span class="sr-only">Previous</span>  </a> </li>    
	    <li class="page-item"><a class="page-link" href="#">1</a></li>   
	     <li class="page-item"><a class="page-link" href="#">2</a></li>   
	     
	      <li class="page-item"><a class="page-link" href="#">3</a></li>  
	        <li class="page-item">      <a class="page-link" href="#" aria-label="Next">       
	         <span aria-hidden="true">&raquo;</span>      
	           <span class="sr-only">Next</span></a></li></ul></nav>
</body>
</html>