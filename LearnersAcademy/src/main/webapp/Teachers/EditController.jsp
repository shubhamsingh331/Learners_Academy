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
TeachersPojo teachers = new TeachersPojo();
TeachersDAO dao = new TeachersDAO();

teachers.setId(Integer.parseInt(request.getParameter("id")));
teachers.setFname(request.getParameter("fname"));
teachers.setLname(request.getParameter("lname"));
teachers.setDob(request.getParameter("dob"));
teachers.setAddress(request.getParameter("address"));
teachers.setPhono(Long.parseLong(request.getParameter("phono")));

int row=dao.update(teachers);

if(row>0){
	response.sendRedirect("EditSuccessful.jsp");
}else{
	response.sendRedirect("EditFailed.jsp");
}
%>
</body>
</html>