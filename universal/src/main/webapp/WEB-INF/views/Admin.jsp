<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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




		


					${msg}






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