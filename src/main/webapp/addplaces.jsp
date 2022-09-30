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
							<strong>Add Places </strong><small>Form</small>
						</div>
														<%
									Message msg = (Message) session.getAttribute("message");
									if(msg != null){
								%>

								<div class="alert <%= msg.getCssClass() %>" role="alert"><%= msg.getMessageText() %></div>

								<% 
									session.removeAttribute("message");
									} 
								%>
						
						<div class="card-body card-block">
							<form action="PlaceRegisterServlet">
								<div class="form-group">
									Place
									<input type="text" name="place" placeholder="Enter place here"
										class="form-control">
								</div>
								<div class="form-group">
									City
									<input type="text" name="city" placeholder="Enter city here"
										class="form-control">
								</div>
								<div class="form-group">
									Airport
									<input type="text" name="airport"
										placeholder="Enter airport here" class="form-control">
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