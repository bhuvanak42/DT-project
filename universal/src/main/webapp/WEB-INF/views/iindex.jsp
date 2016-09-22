<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	
	
<!-- <meta http-equiv="refresh" content="0; URL=./onLoad" /> --> 

<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
	
<style>

#head{
color:blue
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
<%@include file="/WEB-INF/views/Header.jsp"%>

		
		
		
		
		
		
		
		

		

		<section> <!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->


						<div>
								<hr color="red" size="5">

	<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href="${category.name}">${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul>
			</li>
		</c:forEach>

	</ul>
	<hr color="red" size="5">
	<br><br><br>
	<div>
	
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
				</tr>
			</table>
		</c:if>
	</div>
	<%@include file="/WEB-INF/views/code.jsp" %>
						</div>
						



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

	
		<!-- /#footer -->


<%@include file="/WEB-INF/views/Footer.jsp"%>







		<!-- *** FOOTER END *** -->

		<!-- *** COPYRIGHT ***
_________________________________________________________ -->

		
	</div>
	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/resources/js/jquery-1.11.0.min.js"><\/script>');
	</script>
	
	<script
		src="<c:url value='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'/>"></script>

	<script src="<c:url value ="/resources/js/jquery.cookie.js"/>"></script>
	<script src="<c:url value ="/resources/js/waypoints.min.js"/>"></script>
	<script src="<c:url value ="/resources/js/jquery.counterup.min.js"/>"></script>
	<script src="<c:url value ="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
	<script src="<c:url value ="/resources/js/front.js"/>"></script>

	<!-- owl carousel -->
	<script src="<c:url value ="/resources/js/owl.carousel.min.js"/>"></script>

</body>
</html>