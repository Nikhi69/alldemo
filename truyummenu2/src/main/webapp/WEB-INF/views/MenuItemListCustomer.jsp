<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.*" %>
	<%@ page import="com.nikhil.truyum.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
   <div class="container">
		<h1>Menu Item</h1>
		<table class=table>
			<thead>
				<tr>
					<th>MenuItem ID</th>
					<th>Name</th>
					<th>Price</th>
					<th>Active</th>
					<th>Date of Launch</th>
					<th>Category</th>
					<th>Free Delivery</th>
					<th>url</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.id}</td>
						<td>${list.name}</td>
						<td>${list.price}</td>
						<td>${list.active}</td>
						<td>${list.dateOfLaunch}</td>
						<td>${list.category}</td>
						<td>${list.freeDelivery}</td>
						<td>${list.url}</td>
					</tr>
				</c:forEach>
			</tbody>
	
	</div>
		</table>

</body>
</html>