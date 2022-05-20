<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Vehicle.lk</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
        integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/Css/Style.css">
    <link rel="stylesheet" href="assets/Css/Style2.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script> src="assets/Js/Script2.js"</script>
</head>

<body>
    <!-- nav -->
    <div class="page-wrapper">
        <div class="nav-wrapper">
            <div class="grad-bar"></div>
            <nav class="navbar">
                <img src="assets/Images/logo.gif" alt="Company Logo" style="height: 80px;">
                <div class="menu-toggle" id="mobile-menu">
                    <span class="bar"></span>
                    <span class="bar"></span>
                    <span class="bar"></span>
                </div>
            
            </nav>
        </div>
    </div>
    <!-- end nav -->

		<div class="wrapper" style="background-image: url('assets/Images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="assets/Images/registration-form-1.jpg" alt="">
				</div>
				<form method="post" action="Register" onsubmit="return Validate()">
					<h3>Registration Form</h3>
					<div class="form-group">
						<input type="text" placeholder="First Name" id="fn" class="form-control" name="FirstName">
						<input type="text" placeholder="Last Name" id="ln" class="form-control" name="LastName">
					</div>
					<div class="form-wrapper">
						<input type="text" name="PhoneNumber" id="pn" placeholder="PhoneNumber" class="form-control">
						<i class="zmdi zmdi-phone"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" name="Email" id ="email" placeholder="Email Address" class="form-control">
						<i class="zmdi zmdi-email"></i>
					</div>
						<div class="form-wrapper">
						<input type="text" name="Address"placeholder=" Address"  id ="add" class="form-control">
						<i class="zmdi zmdi-location"></i>
					</div>
					<div class="form-wrapper">
						<select name="Gender" id="gen" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>
					<div class="form-wrapper">
						<input type="password"  id ="ps" name="Password"placeholder="Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="password"  id ="nps"  placeholder="Confirm Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
				
					<button  type="submit"  value="Register" >Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
				</form>
			</div>
		</div>
    <!-- main -->

    <!-- footer -->

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
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/Js/Script.js"></script>
    
    <script type="text/javascript">
    //validation for password and confirm password
    function Validate() {
        var password = document.getElementById("ps").value;
        var confirmPassword = document.getElementById("nps").value;
        var email = document.getElementById("email").value;
        var fn = document.getElementById("fn").value;    
        var ln = document.getElementById("ln").value;    
        var pn = document.getElementById("pn").value;
        var add = document.getElementById("add").value;
        var gen = document.getElementById("gen").value;
        
        if (password =="" || confirmPassword =="" || email =="" || fn  =="" || ln  =="" ||  pn  =="" || add  =="" || gen    =="" ) {
            alert("Field is empty");
            return false;
        }
        
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</body>

</html>