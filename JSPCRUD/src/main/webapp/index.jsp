<%@page import="java.util.List"%>
<%@page import="com.glvc.dao.ProductDAO"%>
<%@page import="com.glvc.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>

<form action="addProduct.jsp">
<input type="submit" value="Add Product">
</form>

<h1><i>List of Products</i></h1>
<table border="1">
<tr><th>Product Id</th><th>Product Name</th><th>Product Cost</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
ProductDAO dao = new ProductDAO();
List<Product> list = dao.display();
for(Product p:list){%>
<tr><td><%=p.getPid() %></td><td><%=p.getPname() %></td><td><%=p.getCost() %></td><td><a href="edit.jsp?id=<%=p.getPid()%>">Edit</a></td><td><a href="delete.jsp?id=<%=p.getPid()%>">Delete</a></td></tr>


<%}%>
</table>

</body>
</html>