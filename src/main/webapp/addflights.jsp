<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@page import="com.flyaway.entities.Message"%>
<%@include file="header_sub.jsp"%>

<!doctype html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Flights Master</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-filled.css">
<link rel="stylesheet" href="assets/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>
</head>
<body>

	<%@ include file="header.jsp"%>

	<!--FLIGHT FORM START-->
	<div class="content pb-0">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<strong>Flight Master </strong><small>Form</small>
						</div>
						<div class="card-body card-block">
						
								<%
									Message msg = (Message)session.getAttribute("message");
									if (msg != null) {
								%>

										<div class="alert <%= msg.getCssClass() %>" role="alert"><%= msg.getMessageText() %></div>

								<%
										session.removeAttribute("message");
									} 
								%>

							<form action="FlightRegisterServlet">

								<div class="form-group">
									Flight Number
									<input type="text" name="flightno"
										placeholder="Enter flight number" class="form-control" required>
								</div>
								<div class="form-group">
									Source Place:
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
								<div class="form-group">
									Destination Place:
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

								<div class="form-group">
									Ticket Price
									<input type="text" name="ticketprice"
										placeholder="Ticket price" required class="form-control">
								</div>

								<button id="payment-button" type="submit"
									class="btn btn-lg btn-info btn-block">
									<span id="payment-button-amount">Submit</span>
								</button>

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--FLIGHT FORM END-->

	<%@ include file="footer.jsp"%>