<%@page import="com.flyaway.entities.Message"%>
<%@page import="com.flyaway.helper.ConnectionProvider"%>
<%@ include file="header_sub.jsp" %>

<!doctype html>
<html class="no-js" lang="">
   <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Places Master</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="assets/css/normalize.css">
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="assets/css/themify-icons.css">
      <link rel="stylesheet" href="assets/css/pe-icon-7-filled.css">
      <link rel="stylesheet" href="assets/css/flag-icon.min.css">
      <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   </head>
   <body>

<%@ include file="header.jsp" %>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">PLACES MASTER</h4><br>
                           <a href="addplaces.jsp" style="padding:5px; background-color: #008899; color:white;">Add new place</a>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th class="serial">#</th>
                                       <th>Place</th>
                                       <th></th>
                                       <th>City</th>
                                       <th>Airport</th>
                                       <th></th>
                                    </tr>
                                 </thead>
                                 	<%
										Message msg = (Message)session.getAttribute("msg");
                                    	String place = (String)session.getAttribute("place");
                                    	Connection con = ConnectionProvider.getConnection();
                                    	Statement stmt = con.createStatement();
                                    	ResultSet set = stmt.executeQuery("select * from place order by place asc");
                                    	int i = 1;
                                    	while(set.next()) { 
                                    %>
                                 <tbody>
                                    <tr>
                                       <td><%= i++ %></td>
                                       <td> <%= set.getString("place") %></td>
                                       
                                       <td>
                                       		<% 
												if(msg != null && place.equals(set.getString("place"))){
											%>
												<div class="alert <%= msg.getCssClass() %>" role="alert" style="text-align: center; margin:0px; padding: 0px;">
  													<%= msg.getMessageText() %>
  												</div>
											<%
														session.removeAttribute("msg");
														session.removeAttribute("place");
												}
											%>
                                       </td>
                                       
                                       <td> <%= set.getString("city") %></td>
                                       <td> <%= set.getString("airport") %></td>
                                       <td>
											<a href="updateplace.jsp?id=<%= set.getInt("id") %>" style="color: blue">Edit</a>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="PlaceDeleteServlet?id=<%= set.getInt("id") %>" style="color: red">Delete</a>
										</td>
                                    </tr>
                                    <% } %>
                                    
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