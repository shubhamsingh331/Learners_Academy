<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.glvc.bean.Product"%>
<%@page import="com.glvc.dao.ProductDAO"%>
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
int row = dao.delete(p);

if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>