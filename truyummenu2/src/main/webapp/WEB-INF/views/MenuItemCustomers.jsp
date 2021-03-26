<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
 <link rel="stylesheet" href="menustyle.css" type="text/css">
  <script src="cart.js"></script>
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
  padding-bottom: 60px;

  
}

.mainimgcont{
display:flex;
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

.addcart{
    padding-top:10px ;
    display: flex ;
    float: right;
    justify-content: space-between;
   align-items: center;
}
.cart{
  
 padding: .7rem 1rem;
   background-color: tomato;
   text-decoration: none;
   color: white;
   text-transform: uppercase;
   letter-spacing: 1px;
   font-weight: 300;
   font-size: 1rem;
}
.cart i{
  margin-right: 2px;

}


.mainimgcont{
    padding-top: 20px;
    padding-right: 10px;
    padding-left: 10px;
}
.desc > .cardname1 > h3> span {
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
    text-transform: capitalize;
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
            <li> <a class="abc" href="menu-item-list.html">Menu Items</a></li> 
              <li><a class="abc" href="/viewcart">Cart</a></li>
             <li> <a  href=""><i class="fas fa-user">${uname}</i></a></li>
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
         <c:forEach items="${list}" var="list" >
         
<div class="responsive">
    <div class="gallery">
      <a target="_blank" href="#">
        <img class="img-fluid" src= "${list.url}" alt="${list.name}" width="600" height="400">
      </a>
        <div class="desc">

            <div class="cardname">
                <h1>${list.name}</h1>
                <h1 class="price">&#8377;${list.price}</h1>   
            </div>
            
            <div class="cardname1">
                <h3><span>${list.category}</span></h3>
                <h3><i class="fas fa-caravan"> <b style="background-color: rgb(8, 194, 194); color: rgb(255, 255, 255);">Free: ${list.freeDelivery}</b></i></h3> 
             </div>
             <p><p>
            <div class="addcart">
           <!--   <a href="/addcart?id=${list.id}" class="cart" ><i class="fas fa-cart-plus">Add to cart</i></a>--> 
                <a class="btn btn-warning" onClick="addCart('${list.id}')" class="cart" ><i class="fas fa-cart-plus">Add to cart</i></a>
            </div>
         
        </div>
  </div>
</div>
 
  <div class="clearfix"></div>  
  </c:forEach>
   </div>

<footer>&copy;Copyright 2020</footer> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
 </body>
</html>