<%@page import="java.sql.PreparedStatement"%>

<%@page import="subjects.SubjectsDAO"%>
<%@page import="subjects.SubjectsPojo"%>
<%@page import="teachers.TeachersPojo"%>
<%@page import="java.util.List"%>
<%@page import="teachers.TeachersDAO"%>
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
    session.setAttribute("dept", request.getParameter("dept"));


    
        String createTableSQL = "CREATE TABLE " + request.getParameter("dept") + " (" +
                                "id INT primary key auto_increment," +
                                "subject VARCHAR(255)," +
                                "teachername varchar(255))";
        PreparedStatement ps = conn.prepareStatement(createTableSQL);
        ps.execute();
%>

<h3><i>Add Subjects and Teachers to <%=request.getParameter("dept") %> Department</i></h3>
<form action="add.jsp" method="post">
Select Teacher <select name="teacher">
<%
TeachersDAO dao = new TeachersDAO();
List<TeachersPojo> list = dao.option();

for(TeachersPojo t:list){
%>
<option value="<%=t.getFname()%>"><%=t.getFname() %></option>
<%} %>
</select>
<br>
<br>
Select Subject <select name="subject">
<%
SubjectsDAO dao1 = new SubjectsDAO();
List<SubjectsPojo> list1 = dao1.option();

for(SubjectsPojo s:list1){
%>
<option value="<%=s.getSubname()%>"><%=s.getSubname() %></option>
<%} %>
</select><br>
<br>
<input type="submit" value="Add">
<input type="reset" value="Reset">
</form>

</body>
</html>