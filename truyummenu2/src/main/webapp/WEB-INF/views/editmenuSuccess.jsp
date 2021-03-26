<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.util.Date"%>
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
p {
	background-color: rgb(174, 236, 177);
	font-size: 1.4em;
	padding: 15px;
	margin: 20px;
	border-radius: 2px;
}

h2 {
	margin: 20px;
}
</style>
<title>truYum</title>

</head>

<body>


	<header>
		<div class="topnav" id="myTopnav">
			<a><i class="fas fa-utensils"> truYum</i> </a>

			<nav>
				<li><a href="/admin">Menu Items</a></li>
				<li><a href="menu-item-list-admin.html"><i
						class="glyphicon glyphicon-user">John</i></a></li>
				<li><a href="menu-item-list.html">Logout</a></li>
			</nav>

		</div>
	</header>
	<div>
		<h2>Edit Menu Item</h2>
	</div>

<%
String id = request.getParameter("id");
String item_name = request.getParameter("iname");
String price = request.getParameter("price");
String dateOfLaunch = request.getParameter("dol");
String category = request.getParameter("cate");
String active = request.getParameter("Active");
String freeDelivery = request.getParameter("freed");
if (id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	try {
		int i=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/truyum", "root", "root");
		Statement st = conn.createStatement();
		String sql = "update menu_item set id=?,name=?,price=?,active=?,dateOfLaunch=?,category=?,freedelivery=? where id="+ id;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, item_name);
		ps.setString(3, price);
		ps.setString(4, active);
		ps.setString(5, dateOfLaunch);
		ps.setString(6, category);
		ps.setString(7, freeDelivery);
		 i = ps.executeUpdate();
		if (i > 0) {
			out.println("<p>Menu Item Details Saved Successfully</p>");
		} else {
			out.print("<p>There is a problem in updating Record.</p>");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
}
%>
<footer>&copy;Copyright 2020</footer>
</body>
</html>