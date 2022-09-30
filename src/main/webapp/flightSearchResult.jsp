<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@ include file="header_sub.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Simplilearn's Assessment</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Lato:400,700"
	rel="stylesheet">

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


<!-- THIS IS ADDED BY ME FOR BOOTSTRAP 5 ---- POSITIVELY DO NOT REMOVE ----- -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style type="text/css">
.navbar-brand{
	font-size: 3em;
	font-weight:bold;
}
.nav-link{
	font-size: 3em;
	font-style: italic;
}

.card-body{
	transition: box-shadow 0.2s;
}

.card-body:hover{
	 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}



</style>
</head>

<body style="background-color: #eeeeee">
<body style="background-image: url('https://img.freepik.com/premium-vector/airplane-flight-pattern-white-background-seamless-pattern-plane_532867-315.jpg?w=2000');">
<body style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5WYCsf7DYXoYoseugt9eRlBxOcvfPAheR-A&usqp=CAU');">
<div style="width:100%; height: 40px"></div>	
	
	
	
	
	<nav class="navbar navbar-expand-lg sticky-top navbar-dark" style="background-color:  #00749f;" >
  <a class="navbar-brand" href="index.jsp">FlyAway</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="flights.jsp">Back <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
  </div>
</nav>


<%
	String source = request.getParameter("source");
	String destination = request.getParameter("destination");
	int adults = Integer.parseInt(request.getParameter("adults"));
	int children = Integer.parseInt(request.getParameter("children"));	
	
	Connection con = ConnectionProvider.getConnection();
	
	String q1 = "select count(flightno) as flightcount from (select * from flight where source = ? and destination = ?) as t";
	String q2 = "select * from flight where source = ? and destination = ?";
	
	PreparedStatement stmt1 = con.prepareStatement(q1);
	PreparedStatement stmt2 = con.prepareStatement(q2);
	
	stmt1.setString(1, source);
	stmt1.setString(2, destination);
	stmt2.setString(1, source);
	stmt2.setString(2, destination);

	ResultSet set1 = stmt1.executeQuery();
	ResultSet set2 = stmt2.executeQuery();

	if(set1.next()){
		while(set2.next()){
%>
		<div class="section-center">
			<div class="container" style="padding:35px 0px 0px 0px;">
				<div class="col-md-7 col-md-offset-3">
					<div class="card" style="width: 50rem;">
					  <div class="card-body" style="padding: 25px; margin: 30px; border: 1px dotted gray;">
					   	<h3 class="card-title" style="background-color: #dddddd; padding: 5px;"><strong>Flight No: </strong> <%= set2.getString("flightno") %> </h3>
					    <h5 class="card-subtitle mb-2 text-muted"><strong>From: </strong><%= set2.getString("source") %> <i class='fas fa-arrow-right'></i> <%= set2.getString("destination") %></h5>
					    <%
					    	int ticketPrice = set2.getInt("ticketprice");
					    	int totalCost = ticketPrice * (adults + children);
					    	System.out.println(totalCost);
					    %>
					    <h5 class="card-subtitle mb-2 text-muted">
					    	<strong>Ticket Price: </strong>&#x20B9;  <%= set2.getString("ticketprice") %>
					    </h5>
					    <hr>
					    <h5 class="card-subtitle mb-2 text-muted">
					    	<strong>Total Ticket Cost: </strong>&#x20B9; <%= totalCost %> for (<%= adults%> Adult + <%=children %> Children)
					    </h5>
						<br>					    
					    <p class="card-text">Book the flight and get special offers. Lorem Ipsum is simply dummy text of the printing and typesetting.</p>
					    <a href="registerUser.jsp" class="card-link" style="float: right;">Book now.</a>
					  </div>
					</div>
				</div>
			</div>
		</div>
<%
		}
	}
%>
	
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>	
		<br><br><br><br>
</body>
</html>