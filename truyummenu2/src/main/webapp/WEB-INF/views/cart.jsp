<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>

<%@ page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="style.css" type="text/css">
 
    <title>truYum</title>

</head>
    
<body>   
    
   
    <header >
     <div class="topnav" id="myTopnav">
           <a><i class="fas fa-utensils"> truYum</i> </a> 
     
            <nav>
              <li> <a class="abc" href="/MenuItemCustomers">Menu Items</a></li> 
               <li> <a  href="#"><i class="glyphicon glyphicon-user">John</i></a></li>
                <li><a class="abc" href="/logout">Logout</a></li>
            </nav>
            
        </div>
</header>

<div class="col-25">
  <div class="headingcart">
   <h4>Cart </h4>
 </div>
 	
    <div class="container">
     <c:forEach items="${list}" var="list">  
      <p>${list.name }<span class="price">${list.price }</span><br><span class="price"><a href="/removeItem?id=${list.id }"> <i class="far fa-trash-alt"></i></a></span>
      </p><hr size="30"><br>
      
       </c:forEach>
      
      <p><b>Total</b> <span class="price" style="color:black"><b>${total}</b></span></p>
 
    </div>
  
</div>
<!--  
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>-->
<footer>&copy;Copyright 2020</footer>
</body>
</html>