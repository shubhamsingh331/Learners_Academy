<%@page import="subjects.SubjectsDAO"%>
<%@page import="subjects.SubjectsPojo"%>
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
SubjectsPojo subject=new SubjectsPojo();
SubjectsDAO dao = new SubjectsDAO();

subject.setSubid(Integer.parseInt(request.getParameter("id")));

dao.delete(subject);
response.sendRedirect("DeleteSuccessful.jsp");
%>


</body>
</html>