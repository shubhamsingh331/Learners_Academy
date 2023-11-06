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
<%session.setAttribute("dept", request.getParameter("dept"));%>
<form action="add.jsp" method="post">
<h3><i>Add Subjects and Teachers to <%=request.getParameter("dept") %> Department</i></h3>
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

<table border="1">
<tr><th>S.No.</th><th>Subjects</th><th>Teacher</th></tr>
<%
String jdbcUrl = "jdbc:mysql://localhost:3306/StudentManagement1";
String dbUsername = "root";
String dbPassword = "123456";

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
    String sql = "select * from "+ request.getParameter("dept");
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){%>
    
    	<tr><td><%=rs.getString("id")%></td><td><%=rs.getString("subject") %></td><td><%=rs.getString("teachername") %></td></tr>
    <%}%>
</table>
</body>
</html>