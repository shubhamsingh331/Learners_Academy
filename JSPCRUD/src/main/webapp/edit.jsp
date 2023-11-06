<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="editController.jsp">
<input type="hidden" name ="pid" value=<%=request.getParameter("id") %>>
Name <input type="text" name="pname">
Cost <input type="text" name="cost">
<input type="submit" Value="Edit">
</form>

</body>
</html>