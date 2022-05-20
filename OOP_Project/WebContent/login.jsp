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

    <!-- main -->

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                   
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-7">
                        <div class="login-wrap">
                            <form method="POST" action="Login" class="signin-form d-md-flex">
                                <div class="half p-4 py-md-5">
                              <div class="w-100">
                                  <h3 class="mb-4">Sign In</h3>
                              </div>
                              <div class="form-group mt-3">
                                  <label class="label" >Email</label>
                                  <input type="text" name="Email" class="form-control" placeholder="Email" required>
                              </div>
                        <div class="form-group">
                            <label class="label" for="password">Password</label>
                          <input name="Password" id="password-field" type="password" class="form-control" placeholder="Password" required>
                          <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                        </div>
                      </div>
                                <div class="half p-4 py-md-5 bg-primary">
                        <div class="form-group">
                            <button type="submit" value="Login"class="form-control btn btn-secondary rounded submit px-3">Sign me in now</button>
                        </div>
                        <div class="form-group d-md-flex">
                            <div class="w-50 text-left">
                                <label class="checkbox-wrap checkbox-primary mb-0">Remember Me
                                          <input type="checkbox" checked>
                                          <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="w-50 text-md-right">
                                            <label>New User?</label>
                                            <a href="Register.jsp">Register Now</a>
                                        </div>
                        </div>
                        <p class="w-100 text-center" style="color:white;">&mdash; Or Sign In With &mdash;</p>
                          <div class="w-100">
                                        <p class="social-media d-flex justify-content-center">
                                            <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
                                            <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
                                        </p>
                                    </div>
                      </div>
                  </form>
                </div>
              </div>
                </div>
            </div>
        </section>
    
        <script src="assets/Js/jquery.min.js"></script>
      <script src="assets/Js/popper.js"></script>
      <script src="assets/Js/bootstrap.min.js"></script>
      <script src="assets/Js/main.js"></script>
    
      
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
</body>

</html>