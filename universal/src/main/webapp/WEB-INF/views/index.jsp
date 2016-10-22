<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="/WEB-INF/views/Header.jsp"%>
<style>
#head {
	color: blue
}
/* Main */
#menu {
	width: 100%;
	margin: 0;
	padding: 10px 0 0 0;
	list-style: none;
	background-color: #111;
	background-image: linear-gradient(#444, #111);
	border-radius: 50px;
	box-shadow: 0 2px 1px #9c9c9c;
}

#menu li {
	float: left;
	padding: 0 0 10px 0;
	position: relative;
}

#menu a {
	float: left;
	height: 25px;
	padding: 0 25px;
	color: #999;
	text-transform: uppercase;
	font: bold 12px/25px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
}

#menu li:hover>a {
	color: #fafafa;
}

* html #menu li a:hover { /* IE6 */
	color: #fafafa;
}

#menu li:hover>ul {
	display: block;
}

/* Sub-menu */
#menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: none;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 99999;
	background-color: #444;
	background-image: linear-gradient(#444, #111);
	-moz-border-radius: 5px;
	border-radius: 5px;
}

#menu ul li {
	float: none;
	margin: 0;
	padding: 0;
	display: block;
	box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
}

#menu ul li:last-child {
	box-shadow: none;
}

#menu ul a {
	padding: 10px;
	height: auto;
	line-height: 1;
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

* html #menu ul a { /* IE6 */
	height: 10px;
	width: 150px;
}

*:first-child+html #menu ul a { /* IE7 */
	height: 10px;
	width: 150px;
}

#menu ul a:hover {
	background-color: #0186ba;
	background-image: linear-gradient(#04acec, #0186ba);
}

#menu ul li:first-child a {
	border-radius: 5px 5px 0 0;
}

#menu ul li:first-child a:after {
	content: '';
	position: absolute;
	left: 30px;
	top: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 8px solid #444;
}

#menu ul li:first-child a:hover:after {
	border-bottom-color: #04acec;
}

#menu ul li:last-child a {
	border-radius: 0 0 5px 5px;
}

/* Clear floated elements */
#menu:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}

* html #menu {
	zoom: 1;
} /* IE6 */
*:first-child+html #menu {
	zoom: 1;
} /* IE7 */
</style>
</head>
<body>


	<div id="all">


		<section>

			<!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->


			<div>
				<!-- *** MENU BAR***-->
				<hr color="red" size="5">

				<ul id="menu">
					<div class="container">
						<div class="row">
							<c:forEach items="${categoryList}" var="category">

								<li><a href="${category.name}">${category.name}</a>
									<ul>
										<c:forEach items="${category.products}" var="product">

											<li><a
												href="<c:url value='productInfo/${product.id}' />">${product.name}</a></li>

										</c:forEach>

									</ul></li>
							</c:forEach>
						</div>
					</div>
				</ul>
				<hr color="red" size="5">
			</div>


			<div class="home-carousel">

				<div class="dark-mask"></div>

				<div class="container">

					<!-- COUROSEL STARTING -->
					<div class="homepage owl-carousel">

						<%@include file="/WEB-INF/views/code.jsp"%>

					</div>
				</div>
			</div>

			<!-- *** HOMEPAGE CAROUSEL END *** -->

		</section>


		<section class="bar background-white">
			<div class="container">
				Our Services
				<div class="col-md-12">


					<div class="row">
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-desktop"></i>
								</div>
								<h3>Purchase of products</h3>
								<p>We purchase the products from Apple vendors only</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon" align="center">
									<i class="fa fa-print"></i>
								</div>
								<h3>Guaranteed</h3>
								<p>Deliver products with waranty card delivered from our
									side and from Apple Store</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-globe"></i>
								</div>
								<h3>Branches</h3>
								<p>Apple eStore has branches all over the world</p>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-lightbulb-o"></i>
								</div>
								<h3>Ideas</h3>
								<p>Our team is working with innovative ideas that can
									satisfy customers needs and high level security provided for
									online purchase</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-envelope-o"></i>
								</div>
								<h3>Email</h3>
								<p>Contact us if you have any problems with our products
									easily.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="box-simple">
								<div class="icon">
									<i class="fa fa-user"></i>
								</div>
								<h3>Customers</h3>
								<p>Millions of customers all over the world are satisfied
									with our products</p>
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
										<p>The bedding was hardly able to cover it and seemed
											ready to slide off any moment. His many legs, pitifully thin
											compared with the size of the rest of him, waved about
											helplessly as he looked. "What's happened to me? " he
											thought. It wasn't a dream.</p>
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


		<section class="bar background-white no-mb">
			<div class="container">

				<div class="col-md-12">
					<div class="heading text-center">
						<h2>From our blog</h2>
					</div>

					<p class="lead">
						New iPhone 7 to launch in India sooon.... <span class="accent">Check
							our blog!</span>
					</p>

					<!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

					<div class="row">
						<div class="col-md-12 col-sm-6 pull-center">
							<div class="box-image-text blog">
								<div class="top">
									<div class="image">
										<img src="<c:url value ="/resources/img/blog2.jpg"/>" alt=""
											class="img-responsive">
									</div>
									<div class="bg"></div>
									<div class="text">
										<p class="buttons">
											<a href="<c:url value ='/resources/img/iphone7s.jpg'/>" class="btn btn-template-transparent-primary"><i
												class="fa fa-link"></i> Read more</a>
										</p>
									</div>
								</div>
								<div class="content">
									<h4>iPhone 7</h4>
									<p class="author-category">By John Snow</p>
									<p align="center">Look into it for some cool features of
										iPhone 7</p>
									<p class="read-more">
										<a href="<c:url value ='/resources/img/iphone7s.jpg'/>" class="btn btn-template-main">Continue
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
		</section>




		<!-- *** FOOTER ***
_________________________________________________________ -->


		<!-- /#footer -->

		<%@include file="/WEB-INF/views/Footer.jsp"%>
		<!-- *** FOOTER END *** -->


	</div>

	<!-- #### JAVASCRIPT FILES ### -->
	<%@include file="/WEB-INF/views/scriptfiles.jsp"%>


</body>
</html>