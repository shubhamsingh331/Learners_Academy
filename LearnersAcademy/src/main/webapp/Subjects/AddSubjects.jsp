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
SubjectsPojo subject = new SubjectsPojo();
SubjectsDAO dao = new SubjectsDAO();

subject.setSubid(Integer.parseInt(request.getParameter("id")));
subject.setSubname(request.getParameter("subname"));

int row = dao.insert(subject);

if (row>0){
	response.sendRedirect("AddSuccess.jsp");
}else{
	response.sendRedirect("AddFailed.jsp");
}
%>

</body>
</html>