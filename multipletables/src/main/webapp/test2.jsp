<%@page import="multipletables.Test"%>
<%@page import="multipletables.TestDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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

String jdbcUrl = "jdbc:mysql://localhost:3306/db9";
String dbUsername = "root";
String dbPassword = "123456";




    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

    Statement statement = conn.createStatement();
    
        String createTableSQL = "CREATE TABLE " + request.getParameter("tablename") + " (" 
                                +request.getParameter("idname")+" INT," +
                                request.getParameter("name")+" VARCHAR(255)," +
                                request.getParameter("age")+" INT)";
        statement.executeUpdate(createTableSQL);
        out.println("table created");
    
   

%>
</body>
</html>