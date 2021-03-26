<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*,java.util.*"%>

<%@ page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="movie_list_admin.css">
<title>Movie Cruiser</title>
</head>
<body>
	<div class="maincontainer">
		<div class="navbar">
			<h3>Movie Cruiser</h3>
			<img src="film.png">
			<div class="right">
				<a href="movielistAdmin"><h3>Movies</h3></a> <a href="logout"><h3>Logout</h3></a>
			</div>
		</div>
		<br>
		<main class="mainContent">

			<div class="pageContent">

				<div>

					<form id="form" class="form" action="editmovielist" method="GET">



						<div class="form-control">

							<label for="id">id:</label> <input type="text" name="id">

						</div>



						<div class="form-control">

							<label for="title">Title:</label> <input type="text" name="title" />

						</div>

						<div class="form-control">

							<label for="active">Active:</label> <input type="text"
								name="active" />

						</div>

						<div class="form-control">

							<label for="boxOffice">Box Office:</label> <input type="text"
								name="boxOffice" />

						</div>

						<div class="form-control">

							<label for="dateOfLaunch">Date of Launch:</label> <input
								type="text" name="dateOfLaunch" />

						</div>

						<div class="form-control">

							<label for="genre">Genre:</label> <input type="text" name="genre" />

						</div>

						<div class="form-control">

							<label for="hasTeaser">Has Teaser:</label> <input type="text"
								name="hasTeaser" />

						</div>



						<input type="submit" value="Submit" />



					</form>



				</div>

			</div>

		</main>

		<div class="footer">
			<div class="foot">
				<p>Copyright @ 2019</p>
			</div>
		</div>
	</div>


</body>
</html>