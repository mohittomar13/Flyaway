<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@ include file="header_sub.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Simplilearn's Assessment</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
<h4 style="background-color: rgb(0, 128, 255); padding: 5px 30px;"><a href="index.jsp" style="color:white"><b>Home</b></a></h4>


	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="booking-cta">
							<h1><strong>Simplilearn's</strong> Become a back-end expert </h1>
							<p><em>FlyAway (Airline Booking Portal App).</em></p>
							<p style="text-align: right;"><em><u>By Mohit Tomar</u></em></p>
						</div>
					</div>
					<div class="col-md-7 col-md-offset-1">
						<div class="booking-form">
						
						
						
						
							<form action="flightSearchResult.jsp">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Flying from</span>
											<select name="source" class="form-control" required>
												<option value="Select">Select</option>
												<%
										Connection con = ConnectionProvider.getConnection();
										Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
										ResultSet set = stmt.executeQuery("select * from place order by place asc");
										while(set.next()){
									%>
										<option value="<%= set.getString("place")%>"><%= set.getString("place")%></option>
									<% } %>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Flying to</span>
											<select name="destination" class="form-control" required>
													<option value="Select">Select</option>
												<%
													set.beforeFirst(); // Sets the pointer to -1 so that set.next() could be started again
													while(set.next()){
												%>
													<option value="<%= set.getString("place")%>"><%= set.getString("place")%></option>
												<% } %>
												</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<span class="form-label">Departing</span>
											<input class="form-control" type="date" required>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Adults (18+)</span>
											<select name="adults" class="form-control">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
									
									
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Children (0-17)</span>
											<select name="children" class="form-control">
												<option value="0">0</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
								<div class="form-btn">
									<button class="submit-btn">Show flights</button>
								</div>
							</form>
							
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>