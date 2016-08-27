<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

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
	href="<c:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>" />

<!-- Css animations  -->
<link href="<c:url value="/resources/css/animate.css"/>"
	rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="<c:url value="/resources/css/style.default.css"/>"
	rel="stylesheet" id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet" />

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











		<%@include file="/WEB-INF/views/Header.jsp"%>










		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1>Sign up</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li>Sign up</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">

				<div class="row">
					<div class="col-md-6">

						<h2 class="text-uppercase">Create a new account</h2>

						<p class="lead">Not our registered customer yet?</p>
						<hr>
						<p>With registration with us new world of fashion, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.html">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

						<hr>

						<!-- LOOK HERE -->
						<form:form action="register" method="post"
							commandName="usersDetail">

							<div class="form-group">
								<label class="fullname-signup">Name</label>
								<form:errors path="userFullName" cssStyle="color: #ff0000" />
								<div class="controls docs-input-sizes">
									<form:input path="userFullName" id="fullname-signup"
										class="form-Control" />
								</div>
							</div>

							<div class="form-group">
								<label for="name-signup">Name</label> <span
									style="color: #ff0000">${usernameMsg}</span>
								<form:errors path="username" cssStyle="color: #ff0000" />
								<div class="controls docs-input-sizes">
									<form:input path="userFullName" class="form-control"
										id="name-signup" />
								</div>





								<!--  <div class="form-group">
                                    <label for="address-signup">Address</label>
                                    <textarea class="form-control" rows="5" id="address-signup"></textarea>                                    
                                </div> -->





								<div class="form-group">
									<label for="name-signup">Phone</label>
									<div class="controls docs-input-sizes">
										<form:input path="userPhone" class="form-control"
											id="phone-signup" max="10" />
									</div>
								</div>






								<div class="form-group">
									<label class="email-signup">Email</label> <span
										style="color: #ff0000">${emailMsg}</span>
									<div class="controls docs-input-sizes">
										<form:errors path="userEmail" cssStyle="color: #ff0000" />
										<div class="controls docs-input-sizes">
											<form:input path="userEmail" id="email-signup"
												class="form-Control" />
										</div>
									</div>
								</div>





								<div class="form-group">
									<label for="password-signup">Password</label>
									<form:errors path="password" cssStyle="color: #ff0000" />
									<div class="controls docs-input-sizes">
										<form:input path="password" class="form-control"
											id="password-signup" min="7" max="15" />
									</div>
								</div>






								<!-- <div class="form-group">
                                    <label for="password">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirm-password-signup"/>
                                </div> -->



								<div class="text-center">
									<button type="submit" class="btn btn-template-main pull-left">
										<i class="fa fa-user-md"></i> Register
									</button>
								</div>

								<div class="text-center">
									<button type="reset" class="btn btn-template-main pull-right"
										value="Reset">Clear</button>
								</div>
							</div>

						</form:form>
						<br> <br>

					</div>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->

		<br>
		<!-- *** GET IT ***
_________________________________________________________ -->



		<!-- *** GET IT END *** -->


		<!-- *** FOOTER ***
_________________________________________________________ -->






		<%@include file="/WEB-INF/views/Footer.jsp"%>











		<!-- /#footer -->

		<!-- *** FOOTER END *** -->

		<!-- *** COPYRIGHT ***
_________________________________________________________ -->


		<!-- /#copyright -->

		<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->


	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></c:url>"></script>
	<script>
		window.jQuery
				|| document
						.write("<script src='<c:url value='/resources/js/jquery-1.11.0.min.js'></c:url>'/>")
	</script>
	<script
		src="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></c:url>"></script>

	<script src="<c:url value="/resources/js/jquery.cookie.js"></c:url>"></script>
	<script src="<c:url value="/resources/js/waypoints.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/js/jquery.counterup.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"></c:url>"></script>
	<script src="<c:url value='/resources/js/front.js'></c:url>">
		
	</script>



</body>
</html>