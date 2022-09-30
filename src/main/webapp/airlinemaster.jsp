<%@ include file="header_sub.jsp" %>

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

	<div class="content pb-0">
		<div class="orders">
			<div class="row">
				<div class="col-xl-12">
					<div class="card">
						<div class="card-body">
							<h4 class="box-title">AIRLINE MASTER</h4>
							<br> <a href="addairliner.jsp"
								style="padding: 5px; background-color: #008899; color: white;">Add
								new airliner</a>

						</div>
						<div class="card-body--">
							<div class="table-stats order-table ov-h">
								<table class="table ">
									<thead>
										<tr>
											<th>#</th>
											<th>Operator</th>
											<th>Flight No.</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><span class="name">Indigo Airlines</span></td>
											<td><span class="product">MOSN</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td><span class="name">Spice Jet</span></td>
											<td><span class="product">SCARL</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td><span class="name">British Airlines</span></td>
											<td><span class="product">AUG5</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td><span class="name">Indigo Airlines</span></td>
											<td><span class="product">QBZ95</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>5</td>
											<td><span class="name">Spice Jet</span></td>
											<td><span class="product">BERYL</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>6</td>
											<td><span class="name">British Airlines</span></td>
											<td><span class="product">SKS76</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>7</td>
											<td><span class="name">Indian Airlines</span></td>
											<td><span class="product">SLR762</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>8</td>
											<td><span class="name">Finn Airways</span></td>
											<td><span class="product">UMP45</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>9</td>
											<td><span class="name">Finn Airways</span></td>
											<td><span class="product">AWM300</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>10</td>
											<td><span class="name">Qatar Airlines</span></td>
											<td><span class="product">S12K</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>11</td>
											<td><span class="name">British Airlines</span></td>
											<td><span class="product">P18C</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>12</td>
											<td><span class="name">Indian Airline</span></td>
											<td><span class="product">VSS9MM</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>13</td>
											<td><span class="name">Indigo Airlines</span></td>
											<td><span class="product">LYNXAMR</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>14</td>
											<td><span class="name">Spice Jet</span></td>
											<td><span class="product">M249</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										<tr>
											<td>15</td>
											<td><span class="name">Spice Jet</span></td>
											<td><span class="product">DBS</span></td>
											<td>
												<a href="#" style="color: blue">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="color: red">Delete</a>
											</td>
										</tr>
										
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>