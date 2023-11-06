<%@page import="teachers.TeachersDAO"%>
<%@page import="teachers.TeachersPojo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
TeachersPojo teacher = new TeachersPojo();
TeachersDAO dao = new TeachersDAO();
teacher.setId(Integer.parseInt(request.getParameter("id")));
dao.delete(teacher);
response.sendRedirect("DeleteSuccess.jsp");

%>
</body>
</html>