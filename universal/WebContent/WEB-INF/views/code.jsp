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
							<a href="<c:url value='/product/get/${product.id}'/>">
								 Price: Rs.${product.price}
							</a><br><br>
							<button>Add to Cart</button>
							<br>
							<button>Buy</button>
							</div>
						</div>
					</div> 
			</c:forEach>






<%-- <div class="span7 popular_products">
	<h3>Popular products</h3>
	<br>
	
	
	<ul class="thumbnails">
		<c:forEach items="${productList}" var="product">
			<li class="span2"><div class="thumbnail">
					<a href="<c:url value='/product/get/${product.id}'/>"> 
					<img
						alt=""
						src="<c:url value="/resources/img/productImages/${product.id}.png"/>" />
						${product.name} Price: ${product.price}
					</a> <br>
					<button>Add to Cart</button>
					<br>
					<button>Buy</button>
				</div></li>
		</c:forEach>
	</ul>
</div> --%>