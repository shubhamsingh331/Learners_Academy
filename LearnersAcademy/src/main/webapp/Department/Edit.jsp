<%@page import="subjects.SubjectsPojo"%>
<%@page import="subjects.SubjectsDAO"%>
<%@page import="teachers.TeachersPojo"%>
<%@page import="java.util.List"%>
<%@page import="teachers.TeachersDAO"%>
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
  <a href="Department.jsp">Departments</a>
  <a href="../Subjects/Subject.jsp">Subjects</a>
  <a href="../Teachers/Teachers.jsp">Teachers</a>
  <a href="../Students/Students.jsp">Students</a>
</div><br>
<form action="EditController.jsp" method="post">
<input type="hidden" name="dept" value="<%=request.getParameter("dept")%>">
<input type="submit" value="Add Subjects & Teachers">
</form>
</body>
</html>