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
  <a href="Subject.jsp">Subjects</a>
  <a href="../Teachers/Teachers.jsp">Teachers</a>
  <a href="../Students/Students.jsp">Students</a>
</div><br>
<form action="EditController.jsp" method="post">
<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
Subject Name <input type="text" placeholder="Subject" name="subname"><br>
<input type="submit" value="Submit">
<input type="reset" value="Reset"> 

</form>
<%@include file="Subdisplay.jsp" %>
</body>
</html>