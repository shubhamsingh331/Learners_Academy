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
<form action="AddStudents.jsp" method="post">
<input type="submit" value="Add Students">
</form>
<br>
<%@include file="display.jsp" %>
</body>
</html>