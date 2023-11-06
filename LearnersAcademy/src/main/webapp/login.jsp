<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Student Login Page</title>
</head>
<body>
<h1>Login Page</h1>

<form action="loginv.jsp" method="post">

Username <input type="text" name="username" placeholder="Username" required><br><br>
Password <input type="password" name="pwd" placeholder="Password" required><br><br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">

</form>
</body>
</html>