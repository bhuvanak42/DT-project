<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<h1>Register</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="<c:url value="/"/>">Home</a></li>
							<li>Register</li>

						</ul>

					</div>
				</div>
			</div>
		</div>
		
		<div id="put-center" align="center">
			<h3>You are successfully registered</h3>
			<a href="<c:url value="/"/>" class="btn btn-template-main">Continue
				shopping</a>

		</div>
		<br> <br> <br>



		<%@include file="/WEB-INF/views/Footer.jsp"%>

	</div>
	<!-- /#all -->
	<!-- #### JAVASCRIPT FILES ### -->
	<%@include file="/WEB-INF/views/scriptfiles.jsp"%>
</body>
</html>