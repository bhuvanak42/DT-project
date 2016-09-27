<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html lang="en">

<head>

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

<!-- Favicon and apple touch icons
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
-->
<!-- owl carousel css -->

<link href="<c:url value ="/resources/css/owl.carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value ="/resources/css/owl.theme.css"/>"
	rel="stylesheet">

<style type="text/css">
.form-group input{
	width:50%;
}
</style>
	
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
							<li><a href="/">Home</a></li>
							<li>Sign up</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">

				

						<h2 class="text-uppercase">Create a new account</h2>
						<p class="lead">Not our registered customer yet?</p>
						
						
						<c:if test="${not empty message}">
								<div class="error" style="color: #ff0000;">${message}</div>
						</c:if>
						
						
						<hr>
						<p>With registration with us new world of latest products, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.html">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

						<hr>

						<!-- LOOK HERE -->
						<form:form action="register" method="post" commandName="usersDetail">
						
						 
							
					
								<div class="form-group">
								<label for="fullname-signup">Full Name</label>
								<%-- <span style="color: #ff0000">${userfullnameMsg}</span> --%>
								<form:errors path="userFullName" cssStyle="color: #ff0000" />
								<div class="controls docs-input-sizes">
									<form:input type="text" placeholder="user full name" path="userFullName" class="form-control" id="userFullName" />
								</div> </div>



								<div class="form-group">
								<label for="name-signup">Name</label>
								<%-- <span style="color: #ff0000">${usernameMsg}</span> --%>
								<form:errors path="username" cssStyle="color: #ff0000" /> 
								<div class="controls docs-input-sizes">
									<form:input type="text" placeholder="user name" path="username" class="form-control" id="username" />
								</div> </div>


								<div class="form-group">
									<label for="name-signup">Phone</label>
									<%-- <span style="color: #ff0000">${userPhoneMsg}</span> --%>
									<form:errors path="userPhone" cssStyle="color: #ff0000" />
									<div class="controls docs-input-sizes">
										<form:input type="text" placeholder="phone" path="userPhone" 
										class="form-control" id="phone-signup" max="10" />
									</div>
								</div>


								<!-- pattern="^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"  -->
								<div class="form-group">
									<label for="email-signup">Email</label>
									<%-- <span style="color: #ff0000">${emailMsg}</span>  --%>
									<form:errors path="userEmail" cssStyle="color: #ff0000" />
									<div class="controls docs-input-sizes">
										<form:input placeholder="email" path="userEmail" 
										class="form-control" id="email-signup" />
									</div>
								</div>

								<%-- <div class="form-group">
									<label class="email-signup">Email</label>
									 <span style="color: #ff0000">${emailMsg}</span> 									
										<form:errors path="userEmail" cssStyle="color: #ff0000" />
										<div class="controls docs-input-sizes">
											<form:input  type="text" path="userEmail" id="email-signup"
												placeholder="email" class="form-Control" />
										</div>
									</div> 
								</div>--%>





								<div class="form-group">
									<label for="password-signup">Password</label>
									<%-- <span style="color: #ff0000">${password}</span>  --%>
									<form:errors path="password" cssStyle="color: #ff0000" />
									<div class="controls docs-input-sizes">
										<form:input type="password" path="password" class="form-control"
											placeholder="password" id="password-signup" min="7" max="15" />
									</div>
								</div>


								<div class="form-group">
								<div class="text-center">
									<button type="submit" class="btn btn-template-main pull-left">
										<i class="fa fa-user-md"></i> Register
									</button>
								</div></div>
								
								<div class="form-group">
								<div class="text-center">
									<button type="reset" class="btn btn-template-main"
										value="Reset">Clear</button>
								</div></div>
							

						</form:form>
						<br> <br>
					
					

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