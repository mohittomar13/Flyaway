<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<div class="container">
	<a href="index.jsp">Home</a>
		<form action="RegisterServlet" method="post">
		<br><br>
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="admin_name" required><br>
					</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="admin_email" required><br>
					</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="admin_pass" required><br>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					<input type="submit" name="register" value="Sign up"></td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>