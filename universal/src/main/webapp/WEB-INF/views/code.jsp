<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${productList}" var="product">
	<div class="item">
		<div class="row">
			<div class="col-sm-7">

				<img class="img-responsive"
					src="<c:url value="/resources/img/productImages/${product.id}.png"/>"
					alt="">


			</div>
			<div class="col-sm-5">
				<h1>${product.name}</h1>
				<h2>Price: Rs.${product.price}</h2>
				<br> <a href="<c:url value='/productInfo/${product.id}'/>"
					class="btn btn-template-main"> View details </a><br>

			</div>
		</div>
	</div>
</c:forEach>