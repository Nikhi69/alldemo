<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   <link rel="stylesheet" href="menustyle.css" type="text/css">
  <style>
* {
  box-sizing: border-box;
}
div.gallery {
  border: 1px solid #ccc;

}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  /* padding-bottom: 60px; */

  
}
.cardname{
    padding: 10px 10px 0 10px;
    display: flex;
    justify-content: space-between;
}
.cardname1{
    padding:0 10px 0 10px;
    display: flex;
    justify-content: space-between;
}
.cardname1 h3{
    margin-top: 0;
    margin-bottom: 0;
    font-size: .9rem;

}

 
.cardname2{
  padding:0 10px 0 10px;
    padding-top:10px ;
    display: flex ;
    justify-content: space-between;
   align-items: center;
}
.cardname2 a{
  
 padding: .7rem 1rem;
   background-color: tomato;
   text-decoration: none;
   color: white;
   text-transform: uppercase;
   letter-spacing: 1px;
   font-weight: 300;
   font-size: 1rem;
   
}
.cardname2 i{
  margin-right: 2px;

} 


.mainimgcont{
    padding-top: 20px;
    padding-right: 10px;
    padding-left: 10px;
    display:flex;
}
.desc > .cardname1 > h3> span {
    color: #7B7B7B;
    display: block;
    font-size: .9rem;
    font-weight: 400;
}
.desc > .cardname2 > h3> span {
    color: #7B7B7B;
    display: block;
    font-size: .9rem;
    font-weight: 400;
}
.responsive {
  padding: 5px 6px;
  float: left;
  
  width: 24.99999%;
}
h1 {
    font-size: 1.2rem;
   
}
@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
  </style>
<title>truYum</title>
</head>


<body>

    <header >
     <div class="topnav" id="myTopnav">
           <a><i class="fas fa-utensils"> truYum</i> </a> 
     
           <nav>
            <li> <a class="abc" href="/menuItemListAdmin">Menu Items</a></li> 
              <li><a class="abc" href="/viewcart">Cart</a></li>
             <li> <a  href="/menuItemListAdmin"><i class="fas fa-user">Admin</i></a></li>
              <li><a class="abc" href="/logout">Logout</a></li>
          </nav>
            
        </div>
</header>
<div class="imgcont">
    <div class="search">
        <h2>Find Food </h2>
        <form class="example">
           <div class="icon"> <i class="fas fa-mug-hot" ></i></div>
            <input type="text" placeholder="Search Food.." name="search">
            
        </form>
    </div>
</div>


<div class="mainimgcont">

<c:forEach items="${list}" var="item">

<div class="responsive">
    <div class="gallery">
      <a target="_blank" href="img_5terre.jpg">
        <img src="${item.url}" alt="${item.name}" width="600" height="400">
      </a>
        <div class="desc">
            <div class="cardname">
                <h1>${item.name}</h1>
                <h1 class="price">&#8377;${item.price}</h1>   
            </div>
            
            <div class="cardname1">
                <h3><span><b style="background-color: rgb(2, 141, 9); color: whitesmoke;">Active:${item.active}</b> ${item.category}</span></h3>
                <h3><i class="fas fa-caravan"><b style="background-color: rgb(8, 194, 194); color: rgb(255, 255, 255);">Free ${item.freeDelivery}</b></i></h3> 
             </div>
             <div class="cardname2">
                <h3><span class="sapnn">Launch<br>${item.dateOfLaunch}</span></h3>
             	
                <a href="/editmenu?id=${item.id}" class="cart" ><i class="fas fa-pen-square">Edit</i></a>
             
             </div>
        
        </div>
  </div>
</div>
  
  
 
  <div class="clearfix"></div>

  </c:forEach>
 
   </div>
  
<footer>&copy;Copyright 2020</footer>
</body>

</html>