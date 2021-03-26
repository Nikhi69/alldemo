<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*,java.util.*"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<%@ page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="style.css" type="text/css">
<style>
.editmen {
	margin-left: 30px;
	margin-right: 30px;
}

h1 {
	margin-left: 30px;
	margin-right: 30px;
}

.formFields>input[type="text"] {
	width: 100%;
	padding: 10px 15px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: large;
}

.formFields1>input[type="text"], .formFields1>input[type="date"],
	.formFields1>select {
	/* width: 100%; */
	padding: 10px 15px;
	margin: 8px 0;
	display: inline;
	/* border: 1px solid #ccc;
            box-sizing: border-box; */
	font-size: large;
}

.formFields2>button {
	padding: 10px 15px;
	margin: 8px 0;
	display: block;
}
/*  label {
            font-size: large; 
        }*/
button {
	background-color: tomato;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

.formFields {
	padding: 10px;
}

span.pass {
	float: right;
	padding-top: 16px;
	text-decoration: none;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 480px) {
	.formFields1>input[type="text"], .formFields1>input[type="date"],
		.formFields1>select {
		padding: 10px 15px;
		margin: 8px 0;
		display: block;
		font-size: large;
	}
	span.pass {
		display: block;
		float: none;
		text-decoration: none;
	}
}
</style><!--
<script>
	function validateForm() {
		var x = document.forms["myForm"]["iname"].value;

		// console.log("x is"+x);

		if (x == "") {
			document.getElementById("error").innerHTML = "Item name is required  <br> item name cannot exceed 200 chars...!";
			// alert("Name must be filled out");
			return false;
		}
		var y = document.forms["myForm"]["price"].value;

		if (y == "") {
			document.getElementById("error").innerHTML = "Price should not be.!";
			// alert("Name must be filled out");
			return false;
		}
		return true;
	}
</script>  -->
<title>truYum</title>

</head>

<body>


	<header>
		<div class="topnav" id="myTopnav">
			<a><i class="fas fa-utensils"> truYum</i> </a>

			<nav>
				<ul>
					<li><a href="menu-item-list.html">Menu Items</a></li>
					<li><a href="menu-item-list-admin.html"><i
							class="glyphicon glyphicon-user"> John</i></a></li>
					<li><a href="menu-item-list.html">Logout</a></li>
				</ul>
			</nav>

		</div>
	</header>
	<%
try{
	String id = request.getParameter("id");

	Statement statement = null;
	ResultSet resultSet = null;
Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/truyum", "root", "root");
		Statement st = conn.createStatement();
	String sql ="select * from menu_item where id="+id;
	resultSet = st.executeQuery(sql);
	while(resultSet.next()){
%>


	<form  name="myForm" action="/editmenuSuccess"
		onsubmit=" return validateForm()" method=POST>
		<h1>Edit Menu Item</h1>
		 <div class="form-row">
		<div class="col-md-4 mb-3">
			<input type="hidden" id="id" name="id" value="<%=resultSet.getString("id") %>">
			<label for="iname" id="iname1">Item name</label> 
			<input class="form-control" type="text" id="iname" name="iname" value="<%=resultSet.getString("name") %>">
			<p id="error" style="color: red;"></p>
		</div>
		<div class="col-md-4 mb-3">
			
			<label  for="price">Price</label> <input class="form-control" type="text" id="price" name="price" value="<%=resultSet.getString("price") %>">
		</div>

		
		<div class="col-md-4 mb-3">
			<label for="dol">Date of launch</label> <input class="form-control" type="date"
				 id="dol" name="dol" value="<%=resultSet.getString("dateOfLaunch") %>">
	</div>
	</div>
	 <div class="form-row">
	<div class="col-md-4 mb-3">
				<label  for="cate">Category</label> <select class="form-select form-select-lg mb-3"  name="cate" id="cate">
				<option value="<%=resultSet.getString("category") %>" selected></option>
				<option value="Main Course">Main Course</option>
				<option value="Dessert">Dessert</option>
				<option value="Starter">Starter</option>
			</select>
		</div>
			<div class="col-md-4 mb-3">
			<label  class="form-check-label" for="Yes">Active</label> &nbsp; <input class="form-check-input"
				type="radio" id="Yes" name="Active" value="Yes"> <label class="form-check-label"
				for="Yes">Yes</label> &nbsp; <input class="form-check-input" type="radio" id="No"
				name="Active" value="No"> <label for="No">No</label>
			</div>
		
		<div class="col-md-4 mb-3">
			<input class="form-check-input" type="checkbox" id="vehicle1" name="freed" value="Yes">
			<label class="form-check-label" for="vehicle1"> Free Delivery</label><br></div></div>
			<div class="col-md-4 mb-3"><a href=""><button class="btn btn-primary" type="submit">Save</button></a></div>
		
	</form>

<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<footer>&copy;Copyright 2020</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
