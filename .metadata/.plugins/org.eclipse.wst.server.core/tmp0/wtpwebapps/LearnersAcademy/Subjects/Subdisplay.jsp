<%@page import="subjects.SubjectsDAO"%>
<%@page import="subjects.SubjectsPojo" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3><i>Subject Details</i></h3>
<table border="1">
<tr><th>Id</th><th>Subjects Name</th><th>Edit</th><th>Delete</th></tr>
<%
SubjectsDAO dao = new SubjectsDAO();
List<SubjectsPojo> list = dao.display();
for(SubjectsPojo s:list){%>
	<tr><td><%=s.getSubid() %></td><td><%=s.getSubname()%></td><td><a href=SubEdit.jsp?id=<%=s.getSubid()%>>Edit</a></td><td><a href=SubDelete.jsp?id=<%=s.getSubid()%>>Delete</a></td></tr>
	<%} %>
</table>
</body>
</html>