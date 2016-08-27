<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
</head>
<body>
<header> <!-- *** TOP ***
_________________________________________________________ -->
		<div id="all">
		<div id="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-5 contact">
						<p class="hidden-sm hidden-xs">
							<a href="#" data-animate-hover="pulse">
							<i class="fa fa-phone"></i>
							<span
								class="hidden-xs text-uppercase">
							Contact us on +080 666 555 333
							</span>
							<br>
							<a href="#" data-animate-hover="pulse">
							<i class="fa fa-envelope"></i>
							<span
								class="hidden-xs ">
							customerfeedback@appleestore.com
							</span>
							
							</p>

						<p class="hidden-md hidden-lg">
							<a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>
							<a href="#" data-animate-hover="pulse"><i
								class="fa fa-envelope"></i></a>
						</p>
					</div>
					<div class="col-xs-7">
						<div class="social">
						
							
						
							<a href="<c:url value ="http://www.facebook.com"/>" class="external facebook" data-animate-hover="pulse"><i
								class="fa fa-facebook"></i></a> 
								
							<a href="<c:url value ="http://www.googleplus.com"/>" class="external gplus"
								data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
								
							<a href="<c:url value ="http://www.twitter.com"/>" class="external twitter" data-animate-hover="pulse"><i
								class="fa fa-twitter"></i></a> 
								
								<!-- PUT CODE TO COMPOSE A MAIL REMOVE GMAIL.COM  -->
							<a href="<c:url value ="http://www.gmail.com"/>" class="email"
								data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
						</div>

						<div class="login">
						
						<!-- <a href="index"><span class="glyphicon glyphicon-home">
							Home </span></a> -->
							
							
							<a href="index" ><i
								class="fa fa-home"></i> <span
								class="hidden-xs text-uppercase">Home</span></a>
							
							
							<a href="#" data-toggle="modal" data-target="#login-modal"><i
								class="fa fa-sign-in"></i> <span
								class="hidden-xs text-uppercase">Sign in</span></a>
								<!-- CODE HERE -->
							
							<a href="#" data-toggle="modal" data-target="#signup-modal">
							<i class="fa fa-user">							
							</i> <span
								class="hidden-xs text-uppercase">Sign up</span></a>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- *** TOP END *** --> <!-- *** NAVBAR ***
    _________________________________________________________ -->

		<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

			<div class="navbar navbar-default yamm" role="navigation" id="navbar">

				<div class="container">
					<div class="navbar-header">

						<a class="navbar-brand home" href="index.html"> 
								<img src="<c:url value ="/resources/img/logo.png"/>" alt="Apple eStore logo" class="hidden-xs hidden-sm">
                               <img src="<c:url value ="/resources/img/logo-small.png"/>" alt="Apple eStore logo" class="visible-xs visible-sm">
                               <span class="sr-only">Universal - go to homepage</span> 
						</a>
						<div class="navbar-buttons">
							<button type="button" class="navbar-toggle btn-template-main"
								data-toggle="collapse" data-target="#navigation">
								<span class="sr-only">Toggle navigation</span> <i
									class="fa fa-align-justify"></i>
							</button>
						</div>
					</div>
					<!--/.navbar-header -->

					<div class="navbar-collapse collapse" id="navigation">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="index">Home <b
									class="caret"></b></a>
									
									
								<!-- <ul class="dropdown-menu">
									<li><a href="index.html">Option 1: Default Page</a></li>
									<li><a href="index2.html">Option 2: Application</a></li>
									<li><a href="index3.html">Option 3: Startup</a></li>
									<li><a href="index4.html">Option 4: Agency</a></li>
									<li><a href="index5.html">Option 5: Portfolio</a></li>
								</ul> -->
								
								</li>

							<!-- ========== FULL WIDTH MEGAMENU ================== -->
							<li class="dropdown use-yamm yamm-fw"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"
								data-hover="dropdown" data-delay="200">All Pages <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li>
										<div class="yamm-content">
											<div class="row">
												<div class="col-sm-3">
													<h5>Home</h5>
													<ul>
														<li><a href="index">Option 1: Default Page</a></li>
														<li><a href="index2.html">Option 2: Application</a></li>
														<li><a href="index3.html">Option 3: Startup</a></li>
														<li><a href="index4.html">Option 4: Agency</a></li>
														<li><a href="index5.html">Option 5: Portfolio</a></li>
													</ul>
													<h5>About</h5>
													<ul>
														<li><a href="about.html">About us</a></li>
														<li><a href="team.html">Our team</a></li>
														<li><a href="team-member.html">Team member</a></li>
														<li><a href="services.html">Services</a></li>
													</ul>
													<h5>Marketing</h5>
													<ul>
														<li><a href="packages.html">Packages</a></li>
													</ul>
												</div>


												<div class="col-sm-3">

													<h5>User pages</h5>
													<ul>
														<li><a href="register">Register</a></li>
														<li><a href="login">Login</a></li>
														<li><a href="customer-orders.html">Orders history</a>
														</li>
														<li><a href="customer-order.html">Order history
																detail</a></li>
														<li><a href="customer-wishlist.html">Wishlist</a></li>
														<li><a href="customer-account.html">Customer
																account / change password</a></li>
													</ul>
												</div>
												<div class="col-sm-3">
													<h5>Shop</h5>
													<ul>
														<li><a href="shop-category.html">Category -
																sidebar right</a></li>
														<li><a href="shop-category-left.html">Category -
																sidebar left</a></li>
														<li><a href="shop-category-full.html">Category -
																full width</a></li>
														<li><a href="shop-detail.html">Product detail</a></li>
													</ul>
													<h5>Shop - order process</h5>
													<ul>
														<li><a href="shop-basket.html">Shopping cart</a></li>
														<li><a href="shop-checkout1.html">Checkout - step
																1</a></li>
														<li><a href="shop-checkout2.html">Checkout - step
																2</a></li>
														<li><a href="shop-checkout3.html">Checkout - step
																3</a></li>
														<li><a href="shop-checkout4.html">Checkout - step
																4</a></li>
													</ul>
												</div>
												<div class="col-sm-3">
													<h5>Contact</h5>
													<ul>
														<li><a href="contact.html">Contact</a></li>
														<li><a href="contact2.html">Contact - version 2</a></li>
														<li><a href="contact3.html">Contact - version 3</a></li>
													</ul>


													<h5>Blog</h5>
													<ul>
														<li><a href="blog.html">Blog listing big</a></li>
														<li><a href="blog-medium.html">Blog listing
																medium</a></li>
														<li><a href="blog-small.html">Blog listing small</a>
														</li>
														<li><a href="blog-post.html">Blog Post</a></li>
													</ul>
												</div>
											</div>
										</div> <!-- /.yamm-content -->
									</li>
								</ul></li>
							<!-- ========== FULL WIDTH MEGAMENU END ================== -->

							<li class="dropdown"><a href="javascript: void(0)"
								class="dropdown-toggle" data-toggle="dropdown">Contact <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="contact.html">Contact option 1</a></li>
									<li><a href="contact2.html">Contact option 2</a></li>
									<li><a href="contact3.html">Contact option 3</a></li>

								</ul></li>
						</ul>

					</div>
					<!--/.nav-collapse -->



					<div class="collapse clearfix" id="search">
						<form class="navbar-form" role="search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-template-main">
										<i class="fa fa-search"></i>
									</button>

								</span>
							</div>
						</form>

					</div>
					<!--/.nav-collapse -->

				</div>


			</div>
			<!-- /#navbar -->

		</div>

</div>
		<!-- *** NAVBAR END *** --> </header>
		
	
	<!-- *** LOGIN MODAL ***
_________________________________________________________ -->

        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="login" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email_modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password_modal" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted">
                        <a href="register"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>

        <!-- *** LOGIN MODAL END *** -->
        
        
        
        <!-- *** SIGN UP MODAL ***
_________________________________________________________ -->

       <div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">CUSTOMER REGISTER</h4>
                    </div>
                    <div class="modal-body">
                    
                    
                      	  <form action="customer-orders.html" method="post">
                                <div class="form-group">
                                    <label for="name-signup">Name</label>
                                    <input type="text" class="form-control" id="name-signup" placeholder="name">
                                </div>
                                <div class="form-group">
                                    <label for="name-signup">Address</label>
                                    <textarea class="form-control" rows="5" id="address-signup" placeholder="address"></textarea>                                    
                                </div>
                                <div class="form-group">
                                    <label for="name-signup">Phone</label>
                                    <input type="text" class="form-control" id="phone-signup" placeholder="phone">
                                </div>
                                <div class="form-group">
                                    <label for="email-signup">Email</label>
                                    <input type="text" class="form-control" id="email-signup" placeholder="email">
                                </div>
                                <div class="form-group">
                                    <label for="password-signup">Password</label>
                                    <input type="password" class="form-control" id="password-signup" placeholder="password">
                                </div>
                                 <div class="form-group">
                                    <label for="confirm-password-signup">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirm-password-signup" placeholder="confirm password">
                                </div>
                                <div class="text-center form-group">
                                    <button type="submit" class="btn btn-template-main pull-left"><i class="fa fa-user-md"></i> Register</button>
                                </div>
                               <div class="text-center form-group">
                                    <button type="reset" class="btn btn-template-main pull-right" value="Reset">Clear</button>
                                </div> 
                                
                            </form>

                      <br><br><br> 
                        
                    </div>
                </div>
            </div>
        </div>

        <!-- *** SIGN UP MODAL END *** -->
        
	
		
		
</body>
</html>