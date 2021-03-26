<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script type="text/javascript" src="signup.js"></script>
<link rel="stylesheet" href="style.css" type="text/css">
<title>truYum</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

form label {
	margin: 5px 10px 5px 0;
}

.form-1 {
	width: 30%;
	margin: auto;
	border-width: 2px;
	border-color: black;
	border-style: solid;
	border-radius: 8px;
	margin-bottom: 160px;
}

input[type="password"] {
	padding: 13px 10px;
	border-radius: 8px;
	margin: 8px;
	display: inline-block;
	border-color: dimgrey;
	margin-right: 7px;
	margin-left: 19px;
	padding-right: 35px;
}

input[type="text"] {
	padding: 13px 10px;
	border-radius: 8px;
	margin: 8px;
	display: inline-block;
	border-color: dimgrey;
	margin-right: 7px;
	margin-left: 19px;
	padding-right: 35px;
}

.BTN1 {
	display: inline-block;
	padding: 9px;
	margin-left: 18px;
	border-radius: 8px;
	border-style: hidden;
	background-color: tomato;
	font-size: 18px;
	color: floralwhite;
	margin-bottom: 30px;
	margin-top: 20px;
	margin-right: 30px;
}

.label-1 {
	margin-left: 13px;
	display: inline-block;
	padding: 10px;
}

.label-2 {
	margin-left: 143px;
	display: inline-block;
	padding: 10px;
}

form p {
	font-size: 30px;
	padding: 20px;
	margin: 0;
	margin-left: 10px;
}

section {
	padding-top: 10px;
}

@media ( max-width : 800px) {
	form input {
		margin: 10px 0;
	}
	form {
		flex-direction: column;
		align-items: stretch;
	}
	.form-cont {
		display: block;
	}
}
</style>

</head>

<body>
	<header>
		<div class="topnav" id="myTopnav">
			<a><i class="fas fa-utensils"> truYum</i> </a>

			<nav>
				<li><a href="#">Menu Items</a></li>
				<li><a href="/login">Login</a></li>
				<li><a href="/signup">SignUp</a></li>
			</nav>

		</div>
	</header>
	<section>

		<div id="mid-container">
			<form method=POST class="form-1" onsubmit="return validateSignup()"
				name="signupform" id="signupform" action="">
				<p>SignUp</p>
				<label class="label-1" for="username">User Name</label><br> <input
					type="text" id="username" name="User" placeholder="Enter Username" /><br>
				<label class="label-1" for="firstname">First Name</label> <label
					class="label-2" for="lastname">Last Name</label><br> <input
					type="text" id="firstname" name="firstname"
					placeholder="Enter Firstname" /> <input type="text" id="lastname"
					name="lastname" placeholder="Enter Lastname" /><br> <label
					class="label-1" for="password">Password</label> <label
					class="label-2" for="confirm-password">Confirm-Password</label><br>
				<input type="password" id="password" name="password"
					placeholder="Enter Password"> <input type="password"
					id="confirm-password" name="confirm-password"
					placeholder="Confirm-Password"> <input type="submit"
					value="Signup" class="BTN1">
			</form>
		</div>
	</section>

	<%
	String user_name = request.getParameter("User");
	String first_name = request.getParameter("firstname");
	String last_name = request.getParameter("lastname");
	String password = request.getParameter("password");
	

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/truyum", "root", "root");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into user(us_name,firstname,lastname,password) values('" + user_name + "','"+ first_name + "','" + last_name + "','" + password + "')");
		if(i>0){
		out.println("<p>Successfully Created Account</p>");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>

	

	<footer>&copy;Copyright 2020</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>