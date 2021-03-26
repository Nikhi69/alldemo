<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String uname = request.getParameter("uname");
String id=request.getParameter("Us_id");
session.setAttribute("us_name",uname);
session.setAttribute("us_id",id);
%>
</body>
</html>