<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>


	<footer id="footer">
	<div class="container">
		<div class="col-md-3 col-sm-6">
			<h4>About us</h4>

			<p>Apple eStore is eCommerce website exclusively for Apple
				products and accessories. Apple eStore was established in the year
				2015 and is delivering the services to customers.</p>

			<hr>

			<h4>Join our monthly newsletter</h4>

			<form>
				<div class="input-group">

					<input type="text" class="form-control"> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-send"></i>
						</button>

					</span>

				</div>
				<!-- /input-group -->
			</form>

			<hr class="hidden-md hidden-lg hidden-sm">

		</div>
		<!-- /.col-md-3 -->

		<div class="col-md-3 col-sm-6">

			<h4>Blog</h4>

			<div class="blog-entries">
				<div class="item same-height-row clearfix">
					<div class="image same-height-always">
						<a href="#"> <img class="img-responsive"
							src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
						</a>
					</div>
					<div class="name same-height-always">
						<h5>
							<a href="#">Blog post name</a>
						</h5>
					</div>
				</div>

				<div class="item same-height-row clearfix">
					<div class="image same-height-always">
						<a href="#"> <img class="img-responsive"
							src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
						</a>
					</div>
					<div class="name same-height-always">
						<h5>
							<a href="#">Blog post name</a>
						</h5>
					</div>
				</div>

				<div class="item same-height-row clearfix">
					<div class="image same-height-always">
						<a href="#"> <img class="img-responsive"
							src="<c:url value ="/resources/img/detailsquare.jpg"/>" alt="">
						</a>
					</div>
					<div class="name same-height-always">
						<h5>
							<a href="#">Very very long blog post name</a>
						</h5>
					</div>
				</div>
			</div>

			<hr class="hidden-md hidden-lg">

		</div>
		<!-- /.col-md-3 -->

		<div class="col-md-3 col-sm-6">

			<h4>Contact</h4>
			<p>
				<strong>Apple eStore Ltd.</strong> <br>No.74/2,1st Floor,
				Sanjana Plaza,<br>Elephant Rock Road,<br> Jayanagar 3rd
				Block, <br>Bangalore 56001 <br> <strong>India</strong>
			</p>

			<a href="contact.html" class="btn btn-small btn-template-main">Go
				to contact page</a>

			<hr class="hidden-md hidden-lg hidden-sm">

		</div>
		<!-- /.col-md-3 -->


		<div class="col-md-3 col-sm-6">


			<!-- Set height and width with CSS -->
			<div id="googleMap" style="height: 400px; width: 100%;"></div>

			<!-- Add Google Maps -->

			<script src="http://maps.googleapis.com/maps/api/js"></script>
			<script>
				var myCenter = new google.maps.LatLng(12.9382104, 77.5791246);

				function initialize() {
					var mapProp = {
						center : myCenter,
						zoom : 12,
						scrollwheel : false,
						draggable : false,
						mapTypeId : google.maps.MapTypeId.ROADMAP
					};

					var map = new google.maps.Map(document
							.getElementById("googleMap"), mapProp);

					var marker = new google.maps.Marker({
						position : myCenter,
					});
					marker.setMap(map);
				}

				google.maps.event.addDomListener(window, 'load', initialize);
			</script>


		</div>



		<!-- /.container -->
		</div>
	</footer>

	<!-- *** COPYRIGHT ***
_________________________________________________________ -->

	<div id="copyright">
		<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p class="pull-left">&copy; 2016. Apple eStore Ltd. All Rights
					Reserved.</p>
		
		<%-- <p class="pull-right">
				<a href="http://www.facebook.com" class="external facebook" data-animate-hover="pulse">
							<i class="fa fa-facebook"></i></a> <a
								href="<c:url value ="http://www.googleplus.com"/>"
								class="external gplus" data-animate-hover="pulse"><i
								class="fa fa-google-plus"></i></a> <a
								href="<c:url value ="http://www.twitter.com"/>"
								class="external twitter" data-animate-hover="pulse"><i
								class="fa fa-twitter"></i></a>

							<!-- PUT CODE TO COMPOSE A MAIL REMOVE GMAIL.COM  -->
							<a href="<c:url value ="http://www.gmail.com"/>" class="email"
								data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
				</p> --%>

			</div>
			</div>
			
			
		<!-- /#copyright -->

	</div>
	</div>
	
	<!-- *** COPYRIGHT END *** -->
	