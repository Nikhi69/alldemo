<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.nikhil.truyum.*"%>
<%@ page import="java.sql.*"%>
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
                <a href="/movielistCustomer"><h3>Movies</h3></a> 
                <a href="/viewfavt"><h3>Favorites</h3></a> 
                  <a href="#"><h3>${uname }</h3></a> 
                <a href="/logout"><h3>Logout</h3></a> 
            </div>
        </div>  
    <br>
    <div class="tabledata">
       <div>
           <h3 style="font-size: 25px;">Movies</h3>
       </div>
       <table id="movies">
       <thead>
        <tr> 
	<th>Title</th>
						<th>Box Office</th>
						<th>Active</th>
						<th>Date of Release</th>
						<th>Genre</th>
						<th>Has Teaser</th>
						<th>Action</th>
        </tr></thead>
        <tbody>
   	 <c:forEach items="${list}" var="item">
						<tr>
							<td>${item.title }</td>
							<td>${item.boxoffice }</td>
							<td>${item.active }</td>
							<td>${item.dateoflaunch }</td>
							<td>${item.genre }</td>
							<td>${item.hasteaser }</td>
							<td><a href="/addfavt?movie_id=${item.id }">Add to Favorites</a></td>
						</tr>
					</c:forEach>
        </tbody>

       </table></div><br>
       <div class="footer">
        <div class="foot">
            <p>Copyright @ 2021</p></div>
          </div>
</div>

</body>
</html>