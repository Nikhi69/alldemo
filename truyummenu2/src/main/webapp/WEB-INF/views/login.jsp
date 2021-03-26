<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script type="text/javascript" src="login.js"></script>
<link rel="stylesheet" href="style.css" type="text/css">
<style>
form {
	border: 3px solid #f1f1f1;
	margin: 0 auto;
	width: 50%;
	margin-top: 20px;
	margin-bottom: 20px;
}

h1 {
	text-align: center;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 20px;
}

label {
	font-size: 20px;
}

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
	padding: 16px;
}

span.pass {
	float: right;
	padding-top: 16px;
	text-decoration: none;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 480px) {
	span.pass {
		display: block;
		float: none;
		text-decoration: none;
	}
}
</style>

<title>truYum</title>

</head>

<body>
	<header>
		<div class="topnav" id="myTopnav">
			<a><i class="fas fa-utensils"> truYum</i> </a>

			<nav class="nav nav-pills justify-content-end">
				<li class="nav-item "><a href="#">Menu Items</a></li>
				<li class="nav-item nav-link active"><a href="#">Login</a></li>
				<li class="nav-item"><a href="/login">SignUp</a></li>
			</nav>

		</div>
	</header>

	<form name="myForm" action="" onsubmit=" return validateForm()"
		method=POST>
		<h1>Login</h1>
		<div class="mb-3">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname" class="form-control" >
			<p id="error" style="color: red;"></p>
			<label for="pwd"><b>Password</b></label> <input type="password"
				placeholder="Enter Pasword" name="pwd" class="form-control" >
			<p id="error1" style="color: red;"></p>
			
			<button type="submit">Login</button>
			<span class="pass">New Here?<a href="/signup">SignUp</a></span>
		</div>

	</form>

	<footer>&copy;Copyright 2020</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>