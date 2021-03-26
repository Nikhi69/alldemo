<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="stylde.css" type="text/css">
<title>truYum</title>

<style>
/* Modify the background color */
.navbar-custom {
	background-color: orange;
}
/* Modify brand and text color */
.navbar-custom .navbar-brand, .navbar-custom .navbar-text {
	color: white;
}
</style>
</head>

<body>
	<header>
		<div class="topnav" id="myTopnav">

			<nav class="navbar navbar-expand-md navbar-custom navbar-dark">
				<!-- Brand -->
				<a class="navbar-brand" href="#"><i class="fas fa-utensils">
						truYum</i></a>

				<!-- Toggler/collapsibe Button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar links -->
				<div class="collapse navbar-collapse justify-content-end"
					id="collapsibleNavbar">
					<ul class="navbar-nav ">
						<li class="nav-item"><a style="color: black"
							class="nav-link " href="#">MenuItem</a></li>
						<li class="nav-item"><a style="color: black" class="nav-link"
							href="/login">Login</a></li>
						<li class="nav-item"><a style="color: black" class="nav-link"
							href="/signup">SignUp</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<section>

		<div class="container pt-3" id="mid-container">
			<form method=POST class="form-1" onsubmit="return validateSignup()"
				name="signupform" id="signupform" action="/signupsuccess">
				<div class="row jumbotron">
					<p class="h3 fw-bold text-center">SignUp</p>
					<div class="row-sm-3 form-group">
						<label class="label-1" for="username">User Name</label> <input
							class="form-control" type="text" id="username" name="User"
							placeholder="Enter Username" />
							<h5 id="usercheck" style="color: red;" > 
                    **Username is missing 
              </h5> 
					</div>
					<div class="col-sm-6 form-group">
						<label class="label-1" for="firstname">First Name</label> <input
							class="form-control" type="text" id="firstname" name="firstname"
							placeholder="Enter Firstname" />
								<h5 id="firstcheck" style="color: red;" > 
                    **Firstname is missing 
              </h5> 
					</div>
					<div class="col-sm-6 form-group">
						<label class="label-2" for="lastname">Last Name</label> <input
							class="form-control" type="text" id="lastname" name="lastname"
							placeholder="Enter Lastname" />
								<h5 id="lastcheck" style="color: red;" > 
                    **Lastname is missing 
              </h5> 
					</div>
					<div class="col-sm-6 form-group">
						<label class="label-1" for="password">Password</label> <input
							class="form-control" type="password" id="password"
							name="password" placeholder="Enter Password">
							   <h5 id="passcheck" style="color: red;"> 
                **Please Fill the password 
              </h5> 
					</div>
					<div class="col-sm-6 form-group">
						<label class="label-2" for="confirm-password">Confirm-Password</label>
						<input class="form-control" type="password" id="confirm-password"
							name="confirm-password" placeholder="Confirm-Password">
							<h5 id="conpasscheck" style="color: red;"> 
                  **Password didn't match 
              </h5> 
					</div>
					 <div class="col-sm-12 form-group mb-0">
               <button class="btn btn-warning float-left" id="submitbtn">Submit</button>
            </div>
	</div>
	</form>
	</div>
	</section>
	 <!--  Including app.js jQuery Script -->
      <script src="signup.js"></script> 
	<div class="text-center p-3">
	<footer >&copy;Copyright 2020</footer></div>
</body>
</html>