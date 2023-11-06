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
    
    String sql = "update students set fname = ?, lname = ?, dob = ?, address = ?, phono = ?, dept =? where id = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1, request.getParameter("fname"));
    ps.setString(2, request.getParameter("lname"));
    ps.setString(3, request.getParameter("dob"));
    ps.setString(4, request.getParameter("address"));
    ps.setString(5, request.getParameter("phono"));
    ps.setString(6, request.getParameter("dept"));
    ps.setInt(7, Integer.parseInt(request.getParameter("id")));
    int row = ps.executeUpdate();
    if (row>0){
    	response.sendRedirect("EditSuccessful.jsp");
    }else{
    	out.println("Updation Failed");
    }

%>

</body>
</html>