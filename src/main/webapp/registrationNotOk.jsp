<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Registration failed..!! :-(</h1>
	Cause for failure: <%= exception %>
	<h3>
		<a href="registerpage.jsp">Click here </a>to continue
	</h3>
</body>
</html>