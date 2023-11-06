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
  <a href="Teachers.jsp">Teachers</a>
  <a href="../Students/Students.jsp">Students</a>
</div><br>
<h3><i>Add Teacher's Data</i></h3>
<form action="AddTeachers.jsp" method="post">
Teacher Id <input type="text" placeholder="Teacher's ID" name="id"><br>
First Name <input type="text" placeholder="First Name" name="fname"><br>
Last Name <input type="text" placeholder="Last Name" name="lname"><br>
D.O.B <input type="date" placeholder="D.O.B" name="dob"><br>
Address<input type="text" placeholder="Address" name ="address"><br>
Phone No. <input type="text" placeholder="Phone No." name="phono"><br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form><br>
<%@include file="TeacherDisplay.jsp" %>

</body>
</html>