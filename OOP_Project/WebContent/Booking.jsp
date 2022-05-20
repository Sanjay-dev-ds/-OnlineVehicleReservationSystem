<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
        integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/Css/Style.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css2/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css2/style.css" />

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
        
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Book a vehicle</h1>
						</div>
						<form  action="AddBooking" method="post" >
							
							<div class="form-group">
							<%
							String Id = (String) session.getAttribute("Email"); %>
										<span class="form-label">Email</span>
										<input class="form-control" readonly type="email" name="Email" value="<%=Id %>" placeholder="Enter your email">
									</div>
							<div class="form-group">
							<span class="form-label" >Select Vehicle Type</span>
												<select name="Vehicle" class="form-control"  >
													<option>Car</option>
													<option>Van</option>
													<option>Bus</option>
													<option>Three wheeler</option>
													<option>Lorry</option>
													
												</select>
													<span class="select-arrow"></span>
												</div>
							<div class="form-group">
								<span class="form-label" >Phone</span>
								<input class="form-control" name="Phone" type="tel" placeholder="Enter your phone number">
							</div>
							<div class="form-group">
								<span class="form-label">Pickup Location</span>
								<input class="form-control"  name="PickLocation" type="text" placeholder="Enter ZIP/Location">
							</div>
							<div class="form-group">
								<span class="form-label">Destination</span>
								<input class="form-control"  name="Destination" type="text" placeholder="Enter ZIP/Location">
							</div>
							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<span class="form-label" >Pickup Date</span>
										<input class="form-control" name="Date" type="date" required>
									</div>
								</div>
								<div class="col-sm-7">
									<div class="row">
										<div class="col-sm-4">
											<div class="form-group">
												<span class="form-label">Hour</span>
												<select name="Hour"class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
													<option>7</option>
													<option>8</option>
													<option>9</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<span class="form-label">Min</span>
												<select name="Min"class="form-control">
													<option>05</option>
													<option>10</option>
													<option>15</option>
													<option>20</option>
													<option>25</option>
													<option>30</option>
													<option>35</option>
													<option>40</option>
													<option>45</option>
													<option>50</option>
													<option>55</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<span class="form-label">AM/PM</span>
												<select name="Format" class="form-control">
													<option>AM</option>
													<option>PM</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-btn">
								<button class="submit-btn" type="submit" value="AddBooking">Book Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		<br><br><br>
	
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h6>About</h6>
                    <p class="text-justify">Vehicle.LK can assist the non resident renter, who does not
                        have a Sri Lankan driving licence, to obtain a temporary license from
                        the Automobile Association or Department of Motor Traffic oF Sri Lanka
                        for the duration of his stay in Sri Lanka. This is a legal requirement
                        and mandatory to drive a vehicle in Sri Lanka. Apart from the government
                        fee, no other charges will be levied for this service. Baby seats also
                        will be provided free of charge for the duration of the rental period.</p>
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
                    <p class="copyright-text">Copyright &copy; 2021 All Rights Reserved by
                        <a href="#">Vehicle.lk</a>.
                    </p>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="social-icons">
                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>