<%@page import="java.awt.List"%>
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

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet" />

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
						<h1>Supplier</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="/">Admin</a></li>
							<li>Supplier</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">


				<div class="row">
					<div class="col-md-6">

						<h2 class="text-uppercase">List of suppliers</h2>

					
						<hr>
						
						<!-- LOOK HERE -->
	<%
		List supplierList = (List) session.getAttribute("supplierList");
		request.setAttribute("supplierList", supplierList);
	%>

	<form method="get">
	<button type="button" name="/supplier/add">ADD SUPPLIER</button>
	
	<table>
		<tr>
			<th>Supplier Id</th>
			<th>Supplier Name</th>
			<th>Supplier Address</th>
			<th>Update/Delete Supplier</th>
			<th></th>
		</tr>
		<c:forEach items="${supplierList}" var="supplier">
			<tr>
				<td><c:out value="${supplier.getId()}" /></td>
				<td><c:out value="${supplier.getName()}" /></td>
				<td><c:out value="${supplier.getAddress()}" /></td>
				<td><button type="button" name="supplier/edit/">UPDATE</button>
					<button type="button" name="supplier/remove/">DELETE</button></td>
			</tr>
		</c:forEach>
	</table>
	</form>
							



						
						<br>
						<br>
						<br>
					</div>
				</div>


			</div>

		</div>
		<!-- /#content -->


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