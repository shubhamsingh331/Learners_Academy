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
<h3><i>Update Teacher's Data</i></h3>
<form action="EditController.jsp" method="post">
<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
First Name<input type="text" name="fname" placeholder="First Name"><br>
Last Name<input type="text" name="lname" placeholder="Last Name"><br>
D.O.B<input type="date" name="dob" placeholder="D.O.B"><br>
Address <input type="text" name="address" placeholder="Address"><br>
Phone No.<input type="text" name="phono" placeholder="Phone Number"><br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">

</form>
<%@include file="TeacherDisplay.jsp" %>
</body>
</html>