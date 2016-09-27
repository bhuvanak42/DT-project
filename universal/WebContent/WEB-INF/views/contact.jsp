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

<meta name="keywords" content="" />

<link
	href="<c:url value="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800"/>"
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
	rel="stylesheet" id="theme-stylesheet" />

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
						<h1>Contact</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="/">Home</a></li>
							<li>Contact</li>
							
						</ul>

					</div>
				</div>
			</div>
		</div>
	<section>
	
	
	
	
	 <div class="container">

            <div class="row">
	 		
				${message}
				
                <div class="col-lg-8 col-lg-offset-2">
                    
                    <form id="contact-form" method="post" action="contact" >

                        <div class="messages"></div>

                        <div class="controls">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_name">Firstname *</label>
                                        <input id="form_name" type="text" name="name" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_lastname">Lastname *</label>
                                        <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="Please enter your lastname *" required="required" data-error="Lastname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_email">Email *</label>
                                        <input id="form_email" type="email" name="email" class="form-control" placeholder="Please enter your email *" required="required" data-error="Valid email is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_phone">Phone</label>
                                        <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter your phone">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_message">Message *</label>
                                        <textarea id="form_message" name="message" class="form-control" placeholder="Message for me *" rows="4" required="required" data-error="Please,leave us a message."></textarea>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                   <button type="submit" class="btn btn-small btn-template-main">Send message</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="text-muted"><strong>*</strong> These fields are required. </p>
                                </div>
                            </div>
                        </div>

                    </form>

                </div><!-- /.8 -->

            </div> <!-- /.row-->
            
</div> <!-- /.container-->
	
	
	
	</section>




		<%@include file="/WEB-INF/views/Footer.jsp"%>

	</div>
	<!-- /#all -->


	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></c:url>"></script>
	<!--  <script>
        window.jQuery || document.write("<script src='<c:url value='/resources/js/jquery-1.11.0.min.js'></c:url>'></script>")
    </script> -->
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