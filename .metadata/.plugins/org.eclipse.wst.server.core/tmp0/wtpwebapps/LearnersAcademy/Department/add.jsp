<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
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
<div class="topnav">
  <a class="active" href="../Homepage.jsp">Home</a>
  <a href="Department.jsp">Departments</a>
  <a href="../Subjects/Subject.jsp">Subjects</a>
  <a href="../Teachers/Teachers.jsp">Teachers</a>
  <a href="../Students/Students.jsp">Students</a>
</div><br>
<%
String jdbcUrl = "jdbc:mysql://localhost:3306/StudentManagement1";
String dbUsername = "root";
String dbPassword = "123456";

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

    
        String sql = "insert into "+ session.getAttribute("dept")+" (subject,teachername)values(?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, request.getParameter("subject"));
        ps.setString(2, request.getParameter("teacher"));
        int row = ps.executeUpdate();
        if(row>0){
        	out.println("Response Added Successfully.");
        }else{
        	out.println("Response not added.");
        }
%>
<table border="1">
<tr><th>S.No.</th><th>Subject</th><th>Teacher</th></tr>

<% 

    String sql1 = "select * from " +session.getAttribute("dept");
    PreparedStatement ps1 = conn.prepareStatement(sql1);
    ResultSet rs = ps1.executeQuery();
    while(rs.next()){
    	%>
    	<tr><td><%=rs.getString("id") %></td><td><%=rs.getString("subject") %></td><td><%=rs.getString("teachername") %></td></tr>
<%}%>
    </table>

</body>
</html>