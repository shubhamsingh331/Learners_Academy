<%@page import="java.sql.ResultSet"%>
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
<div class="topnav">
  <a class="active" href="../Homepage.jsp">Home</a>
  <a href="../Department/Department.jsp">Departments</a>
  <a href="../Subjects/Subject.jsp">Subjects</a>
  <a href="../Teachers/Teachers.jsp">Teachers</a>
  <a href="Students.jsp">Students</a>
</div><br>
<h3><i>Update Student details</i></h3>
<form action="EditController.jsp" method="post">
<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
First Name <input type="text" name="fname" placeholder="First Name"><br>
Last Name <input type="text" name="lname" placeholder="Last Name"><br>
D.O.B <input type="date" name="dob"><br>
Address <input type="text" name="address" placeholder="Address"><br>
Phone <input type="text" name="phono" placeholder="Phone Number"><br>
Department <select name = "dept">
<%String jdbcUrl = "jdbc:mysql://localhost:3306/StudentManagement1";
String dbUsername = "root";
String dbPassword = "123456";

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
    String sql = "show tables";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
    	%>
    	<option><%=rs.getString(1) %></option>
<%}%>
</select><br><br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">

</form>


</body>
</html>