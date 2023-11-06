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
<%
ProductDAO dao = new ProductDAO();
Product p = new Product();

p.setPid(Integer.parseInt(request.getParameter("pid")));
p.setPname(request.getParameter("pname"));
p.setCost(Float.parseFloat(request.getParameter("cost")));
int row = dao.edit(p);

if(row>0){
	response.sendRedirect("success.jsp");
	
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>