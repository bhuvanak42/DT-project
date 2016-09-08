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
							<a href="#" data-animate-hover="pulse"> <i
								class="fa fa-phone"></i> <span class="hidden-xs text-uppercase">
									Contact us on +080 666 555 333 </span> <br> 
									<a href="#" data-animate-hover="pulse"> 
								<i class="fa fa-envelope"></i> 
								<span class="hidden-xs "> customerfeedback@appleestore.com </span>
						</p>

						<p class="hidden-md hidden-lg">
							<a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>
							<a href="#" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
						</p>
					</div>
					<div class="col-xs-7">
						<div class="social">
							<a href="<c:url value ="http://www.facebook.com"/>"
								class="external facebook" data-animate-hover="pulse"><i
								class="fa fa-facebook"></i></a> <a
								href="<c:url value ="http://www.googleplus.com"/>"
								class="external gplus" data-animate-hover="pulse"><i
								class="fa fa-google-plus"></i></a> <a
								href="<c:url value ="http://www.twitter.com"/>"
								class="external twitter" data-animate-hover="pulse"><i
								class="fa fa-twitter"></i></a>

							<!-- PUT CODE TO COMPOSE A MAIL REMOVE GMAIL.COM  -->
							<a href="<c:url value ="http://www.gmail.com"/>" class="email"
								data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
						</div>

						<div class="login">

							<!-- <a href="index"><span class="glyphicon glyphicon-home">
							Home </span></a> -->


						<c:choose>
							<c:when test="${pageContext.request.userPrincipal.name != null}">							
								<c:if test="${pageContext.request.userPrincipal.name != 'Admin'}">
									<a href="<c:url value="/" />">Cart</a>
								</c:if>
								<c:if
									test="${pageContext.request.userPrincipal.name  == 'Admin'}">
									<%-- <a href="<c:url value="/" />">View Inventory</a>
									<a href="<c:url value="/" />">View Customer</a> --%>
								</c:if>
								
								<a>Hello, ${pageContext.request.userPrincipal.name}</a>
								<a href="<c:url value="/j_spring_security_logout"/>">Sign Out</a>
							</c:when>						
							<c:otherwise>					
							​<a href="index"><i class="fa fa-home"></i>
							<span class="hidden-xs text-uppercase">Home</span></a>
							<a href="loginPage"> <i class="fa fa-sign-in"></i> 
							<span class="hidden-xs text-uppercase">Sign in</span></a> 
							<a href="register"><i class="fa fa-user"> </i> 
							<span class="hidden-xs text-uppercase">Sign up</span></a>
							</c:otherwise>
						</c:choose>
						</div>
	
					</div>
				</div>
			</div>
		</div> <!-- *** TOP END *** -->
		<!-- *** NAVBAR ***
    _________________________________________________________ -->

		<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

			<div class="navbar navbar-default yamm" role="navigation" id="navbar">

				<div class="container">
					<div class="navbar-header">

						<a class="navbar-brand home" href="index.html"> <img
							src="<c:url value ="/resources/img/logo.png"/>"
							alt="Apple eStore logo" class="hidden-xs hidden-sm"> <%--  <img src="<c:url value ="/resources/img/logo-small.png"/>" alt="Apple eStore logo" class="visible-xs visible-sm">
                               <span class="sr-only">Universal - go to homepage</span>  --%>
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
							<li><a href="index">Home <b class="caret"></b></a></li>

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
														<li><a href="index">Default Page</a></li>
													</ul>
												</div>


												<div class="col-sm-3">

													
												<c:choose>
												<c:when test="${pageContext.request.userPrincipal.name != null}">
													<c:if test="${pageContext.request.userPrincipal.name == 'Admin'}">
													<h5>Admin pages</h5>
													<ul>
														<li><a href="categories">Category</a></li>
														<li><a href="suppliers">Supplier</a></li>
														<li><a href="products">Product</a></li>
														<li><a href="customers">View Customers</a></li>
														
													</ul>
													</c:if>
													
													<c:if test="${pageContext.request.userPrincipal.name != 'Admin'}">
													<h5>User pages</h5>
													<ul>
														<li><a href="cart">Cart</a></li>
													</ul>
													</c:if>
													</c:when>
													
													<c:otherwise>
													<h5>User pages</h5>
													<ul>
														<li><a href="register">Register</a></li>
														<li><a href="loginPage">Login</a></li>
													</ul>
													</c:otherwise>
											</c:choose>
											</div>
											

												<div class="col-sm-3">
													<h5>Contact</h5>
													<ul>
														<li><a href="contact.html">Contact</a></li>
														<li><a href="contact2.html">Contact - version 2</a></li>
														<li><a href="contact3.html">Contact - version 3</a></li>
													</ul>
												</div>

												<div class="col-sm-3">
													<h5>Blog</h5>
													<ul>
														<li><a href="blog.html">Blog listing big</a></li>
														<li><a href="blog-medium.html">Blog listing
																medium</a></li>
														<li><a href="blog-small.html">Blog listing small</a></li>
														<li><a href="blog-post.html">Blog Post</a></li>
													</ul>
												</div>

											</div>
											<!-- /row-content -->
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
	<!-- *** NAVBAR END *** --> 

</header>


</body>
</html>