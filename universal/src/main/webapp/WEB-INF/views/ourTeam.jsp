<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">

<head>
<%@include file="/WEB-INF/views/Header.jsp"%>
</head>

<body>


	<div id="all">
		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1>Our Team</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="<c:url value='/index'/>">Home</a></li>
							<li>Our Team</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">




				<section class="bar background-white">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="heading">
									<h2>Meet our team</h2>
								</div>
							</div>
						</div>
						<!-- /.row -->
						<div class="row">
							<div class="col-md-3 col-sm-3">
								<div class="team-member" data-animate="fadeInUp">
									<div class="image">

										<img src="<c:url value="/resources/img/person-1.jpg"/>" alt=""
											class="img-responsive img-circle">

									</div>
									<h3>Han Solo</h3>
									<p class="role">Founder</p>
									<div class="social">
										<a href="<c:url value="http://www.facebook.com"/>"
											class="external facebook" data-animate-hover="pulse"><i
											class="fa fa-facebook"></i></a> <a
											href="<c:url value="http://www.googleplus.com"/>"
											class="external gplus" data-animate-hover="pulse"><i
											class="fa fa-google-plus"></i></a> <a
											href="<c:url value="http://www.twitter.com"/>"
											class="external twitter" data-animate-hover="pulse"><i
											class="fa fa-twitter"></i></a> <a
											href="<c:url value="http://www.gmail.com"/>"
											class="external email" data-animate-hover="pulse"><i
											class="fa fa-envelope"></i></a>
									</div>
									<div class="text">
										<p>Apple eStore was a eight years project that came to
											serve the customers</p>
									</div>
								</div>
								<!-- /.team-member -->
							</div>
							<div class="col-md-3 col-sm-3" data-animate="fadeInUp">
								<div class="team-member">
									<div class="image">

										<img src="<c:url value="/resources/img/person-2.jpg"/>" alt=""
											class="img-responsive img-circle">

									</div>
									<h3>Luke</h3>
									<p class="role">CTO</p>

									<div class="social">
										<a href="<c:url value="http://www.facebook.com"/>"
											class="external facebook" data-animate-hover="pulse"><i
											class="fa fa-facebook"></i></a> <a
											href="<c:url value="http://www.googleplus.com"/>"
											class="external gplus" data-animate-hover="pulse"><i
											class="fa fa-google-plus"></i></a> <a
											href="<c:url value="http://www.twitter.com"/>"
											class="external twitter" data-animate-hover="pulse"><i
											class="fa fa-twitter"></i></a> <a
											href="<c:url value="http://www.gmail.com"/>"
											class="external email" data-animate-hover="pulse"><i
											class="fa fa-envelope"></i></a>
									</div>
									<div class="text">
										<p>All latest technologies used for the website and safety
											of products and security for transaction is achieved</p>
									</div>
								</div>
								<!-- /.team-member -->
							</div>
							<div class="col-md-3 col-sm-3" data-animate="fadeInUp">
								<div class="team-member">
									<div class="image">

										<img src="<c:url value="/resources/img/person-3.png"/>" alt=""
											class="img-responsive img-circle">

									</div>
									<h3>Princess Leia</h3>
									<p class="role">Team Leader</p>
									<div class="social">
										<a href="<c:url value="http://www.facebook.com"/>"
											class="external facebook" data-animate-hover="pulse"><i
											class="fa fa-facebook"></i></a> <a
											href="<c:url value="http://www.googleplus.com"/>"
											class="external gplus" data-animate-hover="pulse"><i
											class="fa fa-google-plus"></i></a> <a
											href="<c:url value="http://www.twitter.com"/>"
											class="external twitter" data-animate-hover="pulse"><i
											class="fa fa-twitter"></i></a> <a
											href="<c:url value="http://www.gmail.com"/>"
											class="external email" data-animate-hover="pulse"><i
											class="fa fa-envelope"></i></a>
									</div>
									<div class="text">
										<p>The credit goes my team who worked day and night to
											achieve this mission</p>
									</div>
								</div>
								<!-- /.team-member -->
							</div>
							<div class="col-md-3 col-sm-3" data-animate="fadeInUp">
								<div class="team-member">
									<div class="image">

										<img src="<c:url value="/resources/img/person-4.jpg"/>" alt=""
											class="img-responsive img-circle">

									</div>
									<h3>Jabba Hut</h3>
									<p class="role">Lead Developer</p>
									<div class="social">
										<a href="<c:url value="http://www.facebook.com"/>"
											class="external facebook" data-animate-hover="pulse"><i
											class="fa fa-facebook"></i></a> <a
											href="<c:url value="http://www.googleplus.com"/>"
											class="external gplus" data-animate-hover="pulse"><i
											class="fa fa-google-plus"></i></a> <a
											href="<c:url value="http://www.twitter.com"/>"
											class="external twitter" data-animate-hover="pulse"><i
											class="fa fa-twitter"></i></a> <a
											href="<c:url value="http://www.gmail.com"/>"
											class="external email" data-animate-hover="pulse"><i
											class="fa fa-envelope"></i></a>
									</div>
									<div class="text">
										<p>Developing projects is a major task and we have
											successfully deployed</p>
									</div>
								</div>
								<!-- /.team-member -->
							</div>
						</div>
						<!-- /.row -->


					</div>
					<!-- /.container -->
				</section>

				<section class="bar background-pentagon">
					<div class="container">
						<div class="row showcase">
							<div class="col-md-3 col-sm-6">
								<div class="item">
									<div class="icon">
										<i class="fa fa-align-justify"></i>
									</div>
									<h4>
										<span class="counter">580</span><br> Websites
									</h4>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="item">
									<div class="icon">
										<i class="fa fa-users"></i>
									</div>
									<h4>
										<span class="counter">100</span><br> Satisfied Clients
									</h4>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="item">
									<div class="icon">
										<i class="fa fa-copy"></i>
									</div>
									<h4>
										<span class="counter">320</span><br> Projects
									</h4>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="item">
									<div class="icon">
										<i class="fa fa-font"></i>
									</div>
									<h4>
										<span class="counter">923</span><br> Magazines and
										Brochures
									</h4>
								</div>
							</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container -->
				</section>
				<!-- /.bar -->
			</div>

		</div>
		<!-- /#all -->

		<%@include file="/WEB-INF/views/Footer.jsp"%>

	</div>
	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->
	<%@include file="/WEB-INF/views/scriptfiles.jsp"%>


</body>

</html>