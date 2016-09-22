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

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet" />

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
	
</head>
	
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	/* border-color: #ccc; */
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
	background-color: #f9f9f9;
}


.form-group input{
	width:50%;
}

.select-style select {
    width: 50%;
    padding: 16px 20px;
    border: none;
    border-radius: 4px;
    background-color: #f1f1f1;
}


#itemimage{
    width: 50%;
    padding: 16px 20px;
    border: none;
    border-radius: 4px;

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
						<h1>Product</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="/">Admin</a></li>
							<li>Product</li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<div id="content">
			<div class="container">


				<div class="flex-container">
					

						<h2 class="text-uppercase">List of products</h2>

						<hr>
						
						<!-- LOOK HERE -->
					

	<h3>Add a Product</h3>


	<c:url var="addAction" value="/product/add"></c:url>
	<form:form action="${addAction}" commandName="product" enctype="multipart/form-data">


						<div class="form-group">
							<c:choose>
								<c:when test="${!empty product.id}">

									<div class="form-group">
										<label for="name">ID</label>
										<div class="controls docs-input-sizes">
											<form:input placeholder="id" path="id" required="true"
												class="form-control" id="id" disabled="true" readonly="true" />
										</div>
									</div>

								</c:when>

								<c:otherwise>

									<div class="form-group">
										<form:input path="id" hidden="true" />
										<label for="id">ID</label>
										<div class="controls docs-input-sizes">
											<form:input placeholder="id" path="id" required="true"
												class="form-control" id="id"
												title="id should contains 6 to 7 characters"
												patttern=".{6,7}" />
										</div>
									</div>

								</c:otherwise>
							</c:choose>

						</div>

						<div class="form-group">
							<form:input path="id" hidden="true" />
							<label for="name">Name</label>
							<div class="controls docs-input-sizes">
								<form:input placeholder="name" path="name" required="true"
									class="form-control" id="name" />
							</div>
						</div>

					<div class="form-group">
					<label for = "price">
						<spring:message text="Price" />
					</label>
					<div class="controls docs-input-sizes">
					<form:input path="price" required="true" class="form-control" id="price" />
					</div>
					</div>

						<div class="form-group">
							<label for="description">Description</label>
							<div class="controls docs-input-sizes">
								<form:input placeholder="description" path="description"
									class="form-control" id="description" />
							</div>
						</div>


				<div class="form-group">
				<label for="supplier">Supplier</label>
					<div class="select-style">
					<form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" />
				</div>
				</div>
		
		
				<div class="form-group">
				<label for="category">Category</label>
				<div class="select-style">
				<form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" />						
				</div>
				</div>
			
			<div class="form-group">
			<label for="description">Upload image</label>
				<div class="controls docs-input-sizes">
				<form:input id="itemimage" path="itemImage" type="file" class="form:input-large" />
				</div>
			</div>


						<div class="form-group">
							<div class="controls docs-input-sizes">
								<c:if test="${!empty product.name}">

									<button type="submit" class="btn btn-template-main pull-left">
										<i class="fa fa-user-md"></i> Edit Product
									</button>
								</c:if>
								<c:if test="${empty product.name}">

									<button type="submit" class="btn btn-template-main pull-left">
										<i class="fa fa-user-md"></i> Add Product
									</button>
								</c:if>
							</div>
						</div>		
					</form:form>
	
	
	<br>



	<div class="all">
	<c:if test="${!empty productList}">
	<h3>Product List</h3>
		<table class="tg">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price in Rs.</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
				<th width="60">Product Image</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td align=right>Rs.${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
					<%-- <td><img src="<c:url value='/resources/img/${product.id}.png'/>" height="142" width="142" alt="product image"></img></td> --%>
					
					<%-- <td><img src='D:/ECLIPSE WORKSPACE/AppleFolder/universal/src/main/webapp/WEB-INF/resources/img/${product.id}.png' height="142" width="142" alt="product image"></img></td> --%>
					<td><img src="<c:url value="/resources/img/productImages/${product.id}.png"/>" height="142" width="142" alt="product image"></img>​</td>
					<td><a href="<c:url value="/resources/img/productImages/${product.id}.png"/>">Click here</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
		</div>			
						
					</div>
			
<br><br><br>

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