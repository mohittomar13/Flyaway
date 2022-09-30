<%@page import="com.flyaway.entities.Place"%>
<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@page import="com.flyaway.dao.PlaceDao"%>
<%@page import="com.flyaway.entities.Message"%>
<%@include file="header_sub.jsp"%>

<!doctype html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Add Places</title>
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
							<strong>Update Place </strong><small>Form</small>
						</div>
						<div class="card-body card-block">
						
							<%
							int id = Integer.parseInt(request.getParameter("id"));
							System.out.println(">>> "+ id +" <<<"); //For Debugging
							PlaceDao placeDao = new PlaceDao(ConnectionProvider.getConnection());
							Place place = placeDao.getPlace(id);
							
							%>
							<form action="PlaceUpdateServlet">
								<input type="hidden" value="<%= place.getId() %>" name="id">
								<div class="form-group">
									Place
									<input type="text" name="place" value="<%= place.getPlace() %>"
										class="form-control">
								</div>
								<div class="form-group">
									City
									<input type="text" name="city" value="<%= place.getCity() %>"
										class="form-control">
								</div>
								<div class="form-group">
									Airport
									<input type="text" name="airport"
										value="<%= place.getAirport() %>" class="form-control">
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