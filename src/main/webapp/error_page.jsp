<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry! Something went wrong.</title>
</head>
<body>
	<h1>Something went wrong..!!</h1>
	Error is of type: <%= exception %><br><br><br>
	<a href="index.jsp">Click here</a> to go back to home.
</body>
</html>