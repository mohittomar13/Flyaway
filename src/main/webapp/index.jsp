<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@ include file="header_sub.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to Flyaway</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('images/bg-01.jpg');">
			<div class="container-login100">
				<div class="wrap-login100" style="width: 40%;">
					<div >
						<h1 style="color: #00ddff;">Welcome to FlyAway</h1>
						<h3 style="color: #00ddff;">&nbsp; &nbsp; <em>"A project by MOHIT
							TOMAR"</em></h3>

						<br> <br> <br> <br> 
						<p style="color: #99ddff;">&nbsp; &nbsp;&nbsp; <a href="registerpage.jsp" style="color: #99ddff;">"CLICK HERE"</a> to signup as an admin.</p>
						<br> <br> <br>
						
						<h4>Select who you are:</h4>
						<table>
							<tr>
								<td><a href="admin.jsp" style="color: white;">Admin</a></td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td><a href="flights.jsp" style="color: white;">User</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>