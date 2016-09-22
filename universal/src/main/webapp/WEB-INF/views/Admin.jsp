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


<style type="text/css">

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
	-webkit-flex: 1; /* Safari 6.1+ */
    -ms-flex: 1; /* IE 10 */ 
    flex: 1;
    width: 100%;
}

.tg tr:hover {background-color: #f5f5f5}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	text-align: center;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}

section{

	height:100%;
	min-height:25cm;
	width:100%;

}
</style>


</head>
	
<body>


	<div id="all">

	<%@include file="/WEB-INF/views/Header.jsp"%>
	
	
	<a href="categories">Categories</a>
	<a href="products">Products</a>
	<a href="suppliers">Suppliers</a>
	
	
	
	<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1>Admin page</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="/">Admin</a></li>
							<c:if test="${isAdminClickedCategories==true||isAdminClickedEditCategories==true }">
							<li>Categories</li>
							</c:if>
							<c:if test="${isAdminClickedSuppliers==true||isAdminClickedEditSuppliers==true }">
							<li>Suppliers</li>
							</c:if>
							<c:if test="${isAdminClickedProducts==true||isAdminClickedEditProducts==true }">
							<li>Products</li>
							</c:if>
						</ul>

					</div>
				</div>
			</div>
		</div>
	<section>
	
	<c:if test="${isAdminClickedCategories==true||isAdminClickedEditCategories==true }">
	<%@include file="category.jsp"  %>
	</c:if>
	
	<c:if test="${isAdminClickedProducts==true||isAdminClickedEditProducts==true }">
	<%@include file="product.jsp"  %>
	</c:if>
	
	<c:if test="${isAdminClickedSuppliers==true ||isAdminClickedEditSuppliers==true}">
	<%@include file="supplier.jsp"  %>
	</c:if>
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