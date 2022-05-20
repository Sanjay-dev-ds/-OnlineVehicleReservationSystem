<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*"%>
<%@page import="Connection.DbConnection"%>
<head>
<meta charset="UTF-8">
<title>Vehicle.lk</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<link rel="stylesheet" href="assets/Css/Style.css">
<link rel="stylesheet" href="assets/Css/Customer.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
	<!-- nav -->
	<div class="page-wrapper">
		<div class="nav-wrapper">
			<div class="grad-bar"></div>
			<nav class="navbar">
				<img src="assets/Images/logo.gif" alt="Company Logo"
					style="height: 80px;">
				<div class="menu-toggle" id="mobile-menu">
					<span class="bar"></span> <span class="bar"></span> <span
						class="bar"></span>
				</div>
			<ul class="nav no-search">
					<li class="nav-item"><a href="Home.jsp"><h3>Home</h3>	</a></li>
					<li class="nav-item"><a href="Booking.jsp"><h3>Bookings</h3></a></li>
					<li class="nav-item"><a href="#"><h3>About</h3></a></li>
					<li class="nav-item"><a href="MyProfile.jsp"><h3>Profile</h3> </a></li>
					<li class="nav-item"><a href="#"><h3>Contact Us</h3> </a></li>
				
					
				</ul>
			</nav>
		</div>
	</div>
	<!-- end nav -->

	<!-- main -->



	<table class="Customertable">
		<thead>

			<tr>


				<th>Vehicle Type</th>
				<th>Phone Number</th>
				<th>Date</th>
				<th>     </th>
			</tr>
		</thead>

		<%

try {
String Id =  (String) session.getAttribute("Email");
Connection con=DbConnection.getConnection();
Statement st=con.createStatement(); 
String query = "SELECT Vehicle,Phone,Date FROM booking where Email='"+Id+"'";
 ResultSet resultSet = st.executeQuery(query);

    while (resultSet.next()) {
%>


		<tbody>
			<tr>
				<form action="DeleteBooking" method="post">
					<td><input readonly name="Vehicle"
						value="<%= resultSet.getString("Vehicle") %>"></td>
					<td><input readonly name="PhoneNumber"
						value="<%= resultSet.getString("Phone") %>"></td>
					<td><input readonly name="Date"
						value="<%= resultSet.getString("Date") %>"></td>
					<td><button type="submit" class="delete">Delete</button></td>
			</tr>
		</tbody>
		</form>
		<%
                            }
                             con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
	</table>
	<th>
		</table> <br> <br> <br> <!-- end main --> <!-- footer --> <footer
			class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<h6>About</h6>
						<p class="text-justify">Vehicle.LK can assist the non resident
							renter, who does not have a Sri Lankan driving licence, to obtain
							a temporary license from the Automobile Association or Department
							of Motor Traffic oF Sri Lanka for the duration of his stay in Sri
							Lanka. This is a legal requirement and mandatory to drive a
							vehicle in Sri Lanka. Apart from the government fee, no other
							charges will be levied for this service. Baby seats also will be
							provided free of charge for the duration of the rental period.</p>
					</div>

					<div class="col-xs-6 col-md-3">
						<h6>Quick Links</h6>
						<ul class="footer-links">
							<li><a href="#">About Us</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Our Partners</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Feedback</a></li>
						</ul>
					</div>

					<div class="col-xs-6 col-md-3">
						<h6>Contact Us</h6>
						<ul class="footer-links">
							<li>T. +94 11 233 44444</li>
							<li>M. +94 71 278 44444</li>
							<li>W. +94 71 278 44444</li>
							<li>Rent@vehicle.lk</li>
							<li>100/10, Nawala Road, Narahenpita,</li>
							<li>Colombo 6, Sri Lanka.</li>
						</ul>
					</div>
				</div>
				<hr>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">
							Copyright &copy; 2021 All Rights Reserved by <a href="#">Vehicle.lk</a>.
						</p>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12">
						<ul class="social-icons">
							<li><a class="facebook" href="#"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="linkedin" href="#"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer> <script
			src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
		<script src="bootstrap/js/bootstrap.min.js"></script> <script
			src="assets/Js/Script.js"></script>
</body>

</html>