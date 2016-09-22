<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html lang="en">

<head>

<%-- <img alt="I am here" src="<c:url value ="/resources/img/blog-avatar2.jpg"/>"/>hi
 --%>
<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Apple eStore</title>

<meta name="keywords" content="">

<link
	href="<c:url value='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800'/>"
	rel='stylesheet' type='text/css' />

<!-- Bootstrap and Font Awesome css -->
<link rel="stylesheet"
	href="<c:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>">

<!-- Css animations  -->
<link href="<c:url value="/resources/css/animate.css"/>"
	rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="<c:url value="/resources/css/style.default.css"/>"
	rel="stylesheet" id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

<!-- Responsivity for older IE -->
<!--[if lt IE 9]>
        <script src="<c:url value="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"/>"></script>
        <script src="<c:url value="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"/>"></script>
<![endif]-->

<!-- Favicon and apple touch icons-->
<link rel="shortcut icon"
	href="<c:url value ="/resources/img/favicon.icon"/>"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="<c:url value ="/resources/img/apple-touch-icon.png"/>" />
<link rel="apple-touch-icon" sizes="57x57"
	href="<c:url value ="/resources/img/apple-touch-icon-57x57.png"/>" />
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value ="/resources/img/apple-touch-icon-72x72.png"/>" />
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value ="/resources/img/apple-touch-icon-76x76.png"/>" />
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value ="/resources/img/apple-touch-icon-114x114.png"/>" />
<link rel="apple-touch-icon" sizes="120x120"
	href="<c:url value ="/resources/img/apple-touch-icon-120x120.png"/>" />
<link rel="apple-touch-icon" sizes="144x144"
	href="<c:url value ="/resources/img/apple-touch-icon-144x144.png"/>" />
<link rel="apple-touch-icon" sizes="152x152"
	href="<c:url value ="/resources/img/apple-touch-icon-152x152.png"/>" />
<!-- owl carousel css -->

<link href="<c:url value ="/resources/css/owl.carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value ="/resources/css/owl.theme.css"/>"
	rel="stylesheet">
</head>

<body>

	<div id="all">

		<header> <!-- *** TOP ***
_________________________________________________________ -->
		<div id="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-5 contact">
						<p class="hidden-sm hidden-xs">Contact us on +080 666 555 333
							<br> customerfeedback@appleestore.com.</p>

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
							<a href="#" data-toggle="modal" data-target="#login-modal"><i
								class="fa fa-sign-in"></i> <span
								class="hidden-xs text-uppercase">Sign in</span></a>
								<!-- CODE HERE -->
							<a href="register"><i class="fa fa-user"></i> <span
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
								<img src="<c:url value ="/resources/img/logo.png"/>" alt="Universal logo" class="hidden-xs hidden-sm">
                               <img src="<c:url value ="/resources/img/logo-small.png"/>" alt="Universal logo" class="visible-xs visible-sm">
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
							<li class="dropdown active"><a href="javascript: void(0)"
								class="dropdown-toggle" data-toggle="dropdown">Home <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="index.html">Option 1: Default Page</a></li>
									<li><a href="index2.html">Option 2: Application</a></li>
									<li><a href="index3.html">Option 3: Startup</a></li>
									<li><a href="index4.html">Option 4: Agency</a></li>
									<li><a href="index5.html">Option 5: Portfolio</a></li>
								</ul></li>

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
														<li><a href="index.html">Option 1: Default Page</a></li>
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
														<li><a href="customer-register.html">Register /
																login</a></li>
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

		<!-- *** NAVBAR END *** --> </header>

		<!-- *** LOGIN MODAL ***
_________________________________________________________ -->

		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="Login">Customer login</h4>
					</div>
					<div class="modal-body">
						<form action="customer-orders.html" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="email_modal"
									placeholder="email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password_modal"
									placeholder="password">
							</div>

							<p class="text-center">
								<button class="btn btn-template-main">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>

						</form>

						<p class="text-center text-muted">Not registered yet?</p>
						<p class="text-center text-muted">
							<a href="customer-register.html"><strong>Register
									now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access
							to special discounts and much more!
						</p>

					</div>
				</div>
			</div>
		</div>

		<!-- *** LOGIN MODAL END *** -->

		<section> <!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->

		<div class="home-carousel">

			<div class="dark-mask"></div>

			<div class="container">
				<div class="homepage owl-carousel">
					<div class="item">
						<div class="row">
							<div class="col-sm-5 right">
								<p>
									<img alt="" src="<c:url value ="/resources/img/logo.png"/>" />

								</p>
								<h1>Looking for
								<ul class="list-style-none">
								<li>MacBook</li>
								<li>iPad</li>
								<li>iPhone</li></ul></h1>
								<p>
									Here it is. <br>All Apple products at one site.
								</p>
							</div>
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value ="/resources/img/template-homepage.png"/>"
									alt="">
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">

							<div class="col-sm-7 text-center">
								<img class="img-responsive"
									src="<c:url value ="/resources/img/template-mac.png"/>" alt="">
							</div>

							<div class="col-sm-5">
								<h2>Supply of Apple products directly from Apple stores.</h2>
								<p>Apple stores around Bangalore.</p>
							</div>

						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-5 right">
								<h1>All latest Apple products</h1>
									<p>From iPhone 6s to Watch</p>
							</div>
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value ="/resources/img/template-easy-customize.png"/>"
									alt="">
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-7">
								<img class="img-responsive"
									src="<c:url value ="/resources/img/template-easy-code.png"/>"
									alt="">
							</div>
							<div class="col-sm-5">
								<h1>Apple accessories</h1>
								<ul class="list-style-none">
									<li>Portble charger</li>
									<li>Earpods</li>
									<li>Charger</li>
									<li>Lightning to USB cable</li>
									<li>and more.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.project owl-slider -->
			</div>
		</div>

		<!-- *** HOMEPAGE CAROUSEL END *** --> </section>

		<section class="bar background-white">
		<div class="container">
			<div class="col-md-12">


				<div class="row">
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon">
								<i class="fa fa-desktop"></i>
							</div>
							<h3>Webdesign</h3>
							<p>Fifth abundantly made Give sixth hath. Cattle creature i
								be don't them behold green moved fowl Moved life us beast good
								yielding. Have bring.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon" align="center">
								<i class="fa fa-print"></i>
							</div>
							<h3>Print</h3>
							<p>Advantage old had otherwise sincerity dependent additions.
								It in adapted natural hastily is justice. Six draw you him full
								not mean evil. Prepare garrets it expense windows shewing do an.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon">
								<i class="fa fa-globe"></i>
							</div>
							<h3>SEO and SEM</h3>
							<p>Am terminated it excellence invitation projection as. She
								graceful shy believed distance use nay. Lively is people so
								basket ladies window expect.</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon">
								<i class="fa fa-lightbulb-o"></i>
							</div>
							<h3>Consulting</h3>
							<p>Fifth abundantly made Give sixth hath. Cattle creature i
								be don't them behold green moved fowl Moved life us beast good
								yielding. Have bring.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon">
								<i class="fa fa-envelope-o"></i>
							</div>
							<h3>Email Marketing</h3>
							<p>Advantage old had otherwise sincerity dependent additions.
								It in adapted natural hastily is justice. Six draw you him full
								not mean evil. Prepare garrets it expense windows shewing do an.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-simple">
							<div class="icon">
								<i class="fa fa-user"></i>
							</div>
							<h3>UX</h3>
							<p>Am terminated it excellence invitation projection as. She
								graceful shy believed distance use nay. Lively is people so
								basket ladies window expect.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<section class="bar background-pentagon no-mb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading text-center">
						<h2>Testimonials</h2>
					</div>

					<p class="lead">We have worked with many clients and we always
						like to hear they come out from the cooperation happy and
						satisfied. Have a look what our clients said about us.</p>


					<!-- *** TESTIMONIALS CAROUSEL ***
 _________________________________________________________ -->

					<ul class="owl-carousel testimonials same-height-row">
						<li class="item">
							<div class="testimonial same-height-always">
								<div class="text">
									<p>One morning, when Gregor Samsa woke from troubled
										dreams, he found himself transformed in his bed into a
										horrible vermin. He lay on his armour-like back, and if he
										lifted his head a little he could see his brown belly,
										slightly domed and divided by arches into stiff sections.</p>
								</div>
								<div class="bottom">
									<div class="icon">
										<i class="fa fa-quote-left"></i>
									</div>
									<div class="name-picture">
										<img class="" alt=""
											src="<c:url value ="/resources/img/person-1.jpg"/>">
										<h5>John McIntyre</h5>
										<p>CEO, TransTech</p>
									</div>
								</div>
							</div>
						</li>
						<li class="item">
							<div class="testimonial same-height-always">
								<div class="text">
									<p>The bedding was hardly able to cover it and seemed ready
										to slide off any moment. His many legs, pitifully thin
										compared with the size of the rest of him, waved about
										helplessly as he looked. "What's happened to me? " he thought.
										It wasn't a dream.</p>
								</div>
								<div class="bottom">
									<div class="icon">
										<i class="fa fa-quote-left"></i>
									</div>
									<div class="name-picture">
										<img class="" alt=""
											src="<c:url value ="/resources/img/person-2.jpg"/>">
										<h5>John McIntyre</h5>
										<p>CEO, TransTech</p>
									</div>
								</div>
							</div>
						</li>
						<li class="item">
							<div class="testimonial same-height-always">
								<div class="text">
									<p>His room, a proper human room although a little too
										small, lay peacefully between its four familiar walls.</p>

									<p>A collection of textile samples lay spread out on the
										table - Samsa was a travelling salesman - and above it there
										hung a picture that he had recently cut out of an illustrated
										magazine and housed in a nice, gilded frame.</p>
								</div>
								<div class="bottom">
									<div class="icon">
										<i class="fa fa-quote-left"></i>
									</div>
									<div class="name-picture">
										<img class="" alt=""
											src="<c:url value ="/resources/img/person-3.png"/>">
										<h5>John McIntyre</h5>
										<p>CEO, TransTech</p>
									</div>
								</div>
							</div>
						</li>
						<li class="item">
							<div class="testimonial same-height-always">
								<div class="text">
									<p>It showed a lady fitted out with a fur hat and fur boa
										who sat upright, raising a heavy fur muff that covered the
										whole of her lower arm towards the viewer. Gregor then turned
										to look out the window at the dull weather. Drops of rain
										could be heard hitting the pane, which made him feel quite
										sad.</p>
								</div>

								<div class="bottom">
									<div class="icon">
										<i class="fa fa-quote-left"></i>
									</div>
									<div class="name-picture">
										<img class="" alt=""
											src="<c:url value ="/resources/img/person-4.jpg"/>">
										<h5>John McIntyre</h5>
										<p>CEO, TransTech</p>
									</div>
								</div>
							</div>
						</li>
						<li class="item">
							<div class="testimonial same-height-always">
								<div class="text">
									<p>It showed a lady fitted out with a fur hat and fur boa
										who sat upright, raising a heavy fur muff that covered the
										whole of her lower arm towards the viewer. Gregor then turned
										to look out the window at the dull weather. Drops of rain
										could be heard hitting the pane, which made him feel quite
										sad. Gregor then turned to look out the window at the dull
										weather. Drops of rain could be heard hitting the pane, which
										made him feel quite sad.</p>
								</div>

								<div class="bottom">
									<div class="icon">
										<i class="fa fa-quote-left"></i>
									</div>
									<div class="name-picture">
										<img class="" alt=""
											src="<c:url value ="/resources/img/person-4.jpg"/>">
										<h5>John McIntyre</h5>
										<p>CEO, TransTech</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
					<!-- /.owl-carousel -->

					<!-- *** TESTIMONIALS CAROUSEL END *** -->
				</div>

			</div>
		</div>
		</section>
		<!-- /.bar -->

		<section
			class="bar background-image-fixed-2 no-mb color-white text-center">
		<div class="dark-mask"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="icon icon-lg">
						<i class="fa fa-file-code-o"></i>
					</div>
					<h3 class="text-uppercase">Do you want to see more?</h3>
					<p class="lead">We have prepared for you more than 40 different
						HTML pages, including 5 variations of homepage.</p>
					<p class="text-center">
						<a href="index2.html"
							class="btn btn-template-transparent-black btn-lg">Check other
							homepage</a>
					</p>
				</div>

			</div>
		</div>
		</section>

		<section class="bar background-white no-mb">
		<div class="container">

			<div class="col-md-12">
				<div class="heading text-center">
					<h2>From our blog</h2>
				</div>

				<p class="lead">
					Pellentesque habitant morbi tristique senectus et netus et
					malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
					vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
					amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
					placerat eleifend leo. <span class="accent">Check our blog!</span>
				</p>

				<!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="box-image-text blog">
							<div class="top">
								<div class="image">
									<img src="<c:url value ="/resources/img/portfolio-4.jpg"/>"
										alt="" class="img-responsive">
								</div>
								<div class="bg"></div>
								<div class="text">
									<p class="buttons">
										<a href="blog-post.html"
											class="btn btn-template-transparent-primary"><i
											class="fa fa-link"></i> Read more</a>
									</p>
								</div>
							</div>
							<div class="content">
								<h4>
									<a href="blog-post.html">Fashion now</a>
								</h4>
								<p class="author-category">
									By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
								</p>
								<p class="intro">Fifth abundantly made Give sixth hath.
									Cattle creature i be don't them behold green moved fowl Moved
									life us beast good yielding. Have bring.</p>
								<p class="read-more">
									<a href="blog-post.html" class="btn btn-template-main">Continue
										reading</a>
								</p>
							</div>
						</div>
						<!-- /.box-image-text -->

					</div>

					<div class="col-md-3 col-sm-6">
						<div class="box-image-text blog">
							<div class="top">
								<div class="image">
									<img src="<c:url value ="/resources/img/portfolio-3.jpg"/>"
										alt="" class="img-responsive">
								</div>
								<div class="bg"></div>
								<div class="text">
									<p class="buttons">
										<a href="blog-post.html"
											class="btn btn-template-transparent-primary"><i
											class="fa fa-link"></i> Read more</a>
									</p>
								</div>
							</div>
							<div class="content">
								<h4>
									<a href="blog-post.html">Fashion now</a>
								</h4>
								<p class="author-category">
									By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
								</p>
								<p class="intro">Fifth abundantly made Give sixth hath.
									Cattle creature i be don't them behold green moved fowl Moved
									life us beast good yielding. Have bring.</p>
								<p class="read-more">
									<a href="blog-post.html" class="btn btn-template-main">Continue
										reading</a>
								</p>
							</div>
						</div>
						<!-- /.box-image-text -->

					</div>

					<div class="col-md-3 col-sm-6">
						<div class="box-image-text blog">
							<div class="top">
								<div class="image">
									<img src="<c:url value ="/resources/img/portfolio-5.jpg"/>"
										alt="" class="img-responsive">
								</div>
								<div class="bg"></div>
								<div class="text">
									<p class="buttons">
										<a href="blog-post.html"
											class="btn btn-template-transparent-primary"><i
											class="fa fa-link"></i> Read more</a>
									</p>
								</div>
							</div>
							<div class="content">
								<h4>
									<a href="blog-post.html">What to do</a>
								</h4>
								<p class="author-category">
									By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
								</p>
								<p class="intro">Fifth abundantly made Give sixth hath.
									Cattle creature i be don't them behold green moved fowl Moved
									life us beast good yielding. Have bring.</p>
								<p class="read-more">
									<a href="blog-post.html" class="btn btn-template-main">Continue
										reading</a>
								</p>
							</div>
						</div>
						<!-- /.box-image-text -->

					</div>

					<div class="col-md-3 col-sm-6">
						<div class="box-image-text blog">
							<div class="top">
								<div class="image">
									<img src="<c:url value ="/resources/img/portfolio-6.jpg"/>"
										alt="" class="img-responsive">
								</div>
								<div class="bg"></div>
								<div class="text">
									<p class="buttons">
										<a href="blog-post.html"
											class="btn btn-template-transparent-primary"><i
											class="fa fa-link"></i> Read more</a>
									</p>
								</div>
							</div>
							<div class="content">
								<h4>
									<a href="blog-post.html">5 ways to look awesome</a>
								</h4>
								<p class="author-category">
									By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
								</p>
								<p class="intro">Am terminated it excellence invitation
									projection as. She graceful shy believed distance use nay.
									Lively is people.</p>
								<p class="read-more">
									<a href="blog-post.html" class="btn btn-template-main">Continue
										reading</a>
								</p>
							</div>
						</div>
						<!-- /.box-image-text -->

					</div>

				</div>
				<!-- /.row -->

				<!-- *** BLOG HOMEPAGE END *** -->

			</div>

		</div>
		<!-- /.container --> </section>
		<!-- /.bar -->

		<!-- *** GET IT ***
_________________________________________________________ -->


		<!-- *** GET IT END *** -->


		<!-- *** FOOTER ***
_________________________________________________________ -->

		<footer id="footer">
		<div class="container">
			<div class="col-md-3 col-sm-6">
				<h4>About us</h4>

				<p>Apple eStore is eCommerce website exclusively for Apple
					products and accessories. Apple eStore was established in the year
					2015 and is delivering the services to customers.</p>

				<hr>

				<h4>Join our monthly newsletter</h4>

				<form>
					<div class="input-group">

						<input type="text" class="form-control"> <span
							class="input-group-btn">

							<button class="btn btn-default" type="button">
								<i class="fa fa-send"></i>
							</button>

						</span>

					</div>
					<!-- /input-group -->
				</form>

				<hr class="hidden-md hidden-lg hidden-sm">

			</div>
			<!-- /.col-md-3 -->

			<div class="col-md-3 col-sm-6">

				<h4>Blog</h4>

				<div class="blog-entries">
					<div class="item same-height-row clearfix">
						<div class="image same-height-always">
							<a href="#"> <img class="img-responsive"
								src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
							</a>
						</div>
						<div class="name same-height-always">
							<h5>
								<a href="#">Blog post name</a>
							</h5>
						</div>
					</div>

					<div class="item same-height-row clearfix">
						<div class="image same-height-always">
							<a href="#"> <img class="img-responsive"
								src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
							</a>
						</div>
						<div class="name same-height-always">
							<h5>
								<a href="#">Blog post name</a>
							</h5>
						</div>
					</div>

					<div class="item same-height-row clearfix">
						<div class="image same-height-always">
							<a href="#"> <img class="img-responsive"
								src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
							</a>
						</div>
						<div class="name same-height-always">
							<h5>
								<a href="#">Very very long blog post name</a>
							</h5>
						</div>
					</div>
				</div>

				<hr class="hidden-md hidden-lg">

			</div>
			<!-- /.col-md-3 -->

			<div class="col-md-3 col-sm-6">

				<h4>Contact</h4>
				<p>
					<strong>Apple eStore Ltd.</strong> <br>No.74/2,1st Floor, Sanjana Plaza,<br>Elephant Rock Road,<br> Jayanagar 3rd Block,
					<br>Bangalore 56001 <br> <strong>India</strong>
				</p>

				<a href="contact.html" class="btn btn-small btn-template-main">Go
					to contact page</a>

				<hr class="hidden-md hidden-lg hidden-sm">

			</div>
			<!-- /.col-md-3 -->



			<div class="col-md-3 col-sm-6">
				
				<div id="googleMap" style="height: 400px; width: 100%;"></div>

				<!-- Add Google Maps -->
				<script src="http://maps.googleapis.com/maps/api/js"></script>
				<script>
					var myCenter = new google.maps.LatLng(12.9382104,
							77.5791246);

					function initialize() {
						var mapProp = {
							center : myCenter,
							zoom : 12,
							scrollwheel : false,
							draggable : false,
							mapTypeId : google.maps.MapTypeId.ROADMAP
						};

						var map = new google.maps.Map(document
								.getElementById("googleMap"), mapProp);

						var marker = new google.maps.Marker({
							position : myCenter,
						});

						marker.setMap(map);
					}

					google.maps.event
							.addDomListener(window, 'load', initialize);
				</script>

			</div>
			<!-- /.col-md-3 -->
		</div>
		<!-- /.container --> </footer>
		<!-- /#footer -->

		<!-- *** FOOTER END *** -->

		<!-- *** COPYRIGHT ***
_________________________________________________________ -->

		<div id="copyright">
			<div class="container">
				<div class="col-md-12">
					<p class="pull-left">&copy; 2016. Apple eStore Ltd. All Rights Reserved.
						</p>
				</div>
			</div>
		</div>
		<!-- /#copyright -->

		<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<c:url value ="/resources/js/jquery-1.11.0.min.js"/>"><\/script>')
	</script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="<c:url value ="/resources/js/jquery.cookie.js"/>"></script>
	<script src="<c:url value ="/resources/js/waypoints.min.js"/>"></script>
	<script src="<c:url value ="/resources/js/jquery.counterup.min.js"/>"></script>
	<script src="<c:url value ="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
	<script src="<c:url value ="/resources/js/front.js"/>"></script>

	<!-- owl carousel -->
	<script src="<c:url value ="/resources/js/owl.carousel.min.js"/>"></script>

</body>
</html>