<%@page import="com.glvc.bean.Product"%>
<%@page import="com.glvc.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Product</i></h1>
<form action="addController.jsp">
<table>
<tr><td>Product Id</td><td><input type="text" name ="pid"></td></tr>
<tr><td>Product Name</td><td><input type="text" name ="pname"></td></tr>
<tr><td>Product Cost</td><td><input type="text" name ="cost"></td></tr>
<tr><td><input type="submit" name ="Add"></td></tr>
</table>
</form>


</body>
</html>