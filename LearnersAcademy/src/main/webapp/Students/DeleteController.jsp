<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
String jdbcUrl = "jdbc:mysql://localhost:3306/StudentManagement";
String dbUsername = "root";
String dbPassword = "123456";

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
    String sql = "delete from students where id = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setInt(1, Integer.parseInt(request.getParameter("id")));
    ps.executeUpdate();
    response.sendRedirect("DeleteSuccessful.jsp");

%>
</body>
</html>