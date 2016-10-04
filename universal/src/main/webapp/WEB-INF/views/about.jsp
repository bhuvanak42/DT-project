<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        <h1>About us</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="<c:url value='/index'/>">Home</a>
                            </li>
                            <li>About us</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <section>
                    <div class="row">
                        <div class="col-md-12">

                            <div class="heading">
                                <h2>About Apple eStore</h2>
                            </div>

                            <p class="lead">Apple eStore is eCommerce website exclusively for Apple products and accessories. Apple eStore was established in the year 2015 
                            and is delivering the services to customers.</p>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="panel-group accordion" id="accordionThree">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">

                                                <a data-toggle="collapse" data-parent="#accordionThree" href="#collapse3a">

                                                    Accordion item no.1

                                                </a>

                                            </h4>
                                    </div>
                                    <div id="collapse3a" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <img src="<c:url value="/resources/img/template-easy-customize.png"/>" alt="" class="img-responsive">
                                                </div>
                                                <div class="col-md-8">
                                                    <p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see
                                                        his brown belly, slightly domed and divided by arches into stiff sections.</p>
                                                    <p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see
                                                        his brown belly, slightly domed and divided by arches into stiff sections.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">

                                                <a data-toggle="collapse" data-parent="#accordionThree" href="#collapse3b">

                                                    Accordion item no.2

                                                </a>

                                            </h4>
                                    </div>
                                    <div id="collapse3b" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <img src="<c:url value="/resources/img/template-easy-code.png"/>" alt="" class="img-responsive">
                                                </div>
                                                <div class="col-md-8">
                                                    <p>It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window
                                                        at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad.</p>
                                                    <p>It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window
                                                        at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">

                                                <a data-toggle="collapse" data-parent="#accordionThree" href="#collapse3c">

                                                    Accordion item no.3 a little too small

                                                </a>

                                            </h4>
                                    </div>
                                    <div id="collapse3c" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <p>His room, a proper human room although a little too small, lay peacefully between its four familiar walls.</p>

                                            <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice,
                                                gilded frame.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="video">
                                <div class="embed-responsive embed-responsive-4by3">
                                    <iframe class="embed-responsive-item" src="//www.youtube.com/embed/upZJpGrppJA"></iframe>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="heading">
                                <h2>Our skills</h2>
                            </div>

                            <div class="progress">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                    SEO
                                </div>
                            </div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                    Search Engine Marketing
                                </div>
                            </div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                    Webdesign
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="heading">
                                <h2>Our services</h2>
                            </div>
                            <ul class="ul-icons">
                                <li><i class="fa fa-check"></i>Purchase of products from Apple vendors</li>
                                <li><i class="fa fa-check"></i>Deliver it to customers</li>
                                <li><i class="fa fa-check"></i>Provide warranty period from our side and from Apple vendor</li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <div class="heading">
                                <h2>Our values</h2>
                            </div>

                            <ul class="ul-icons">
                                <li><i class="fa fa-check"></i>Ensure secure transaction</li>
                                <li><i class="fa fa-check"></i>Satisfy customers </li>
                                <li><i class="fa fa-check"></i>Deliver products</li>
                            </ul>
                        </div>
                    </div>
                </section>

            </div>
            <!-- /#contact.container -->

           <%--  <section class="bar background-pentagon">
                <div class="container">
                    <div class="row showcase">
                        <div class="col-md-3 col-sm-6">
                            <div class="item">
                                <div class="icon"><i class="fa fa-align-justify"></i>
                                </div>
                                <h4><span class="counter">580</span><br>

		Websites</h4>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="item">
                                <div class="icon"><i class="fa fa-users"></i>
                                </div>
                                <h4><span class="counter">100</span><br>

		Satisfied Clients</h4>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="item">
                                <div class="icon"><i class="fa fa-copy"></i>
                                </div>
                                <h4><span class="counter">320</span><br>

		Projects</h4>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="item">
                                <div class="icon"><i class="fa fa-font"></i>
                                </div>
                                <h4><span class="counter">923</span><br> 

		Magazines and Brochures</h4>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.bar -->

            <section class="bar background-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading">
                                <h2>Meet our team</h2>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="team-member" data-animate="fadeInUp">
                                <div class="image">
                                    
                                        <img src="<c:url value="/resources/img/person-1.jpg"/>" alt="" class="img-responsive img-circle">
                                  
                                </div>
                                <h3>Han Solo</h3>
                                <p class="role">Founder</p>
                                <div class="social">
                                    <a href="<c:url value="http://www.facebook.com"/>" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="<c:url value="http://www.googleplus.com"/>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="<c:url value="http://www.twitter.com"/>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="<c:url value="http://www.gmail.com"/>" class="external email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                </div>
                                <div class="text">
                                    <p>Apple eStore was a eight years project that came to serve the customers</p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                            <div class="team-member">
                                <div class="image">
                                   
                                        <img src="<c:url value="/resources/img/person-2.jpg"/>" alt="" class="img-responsive img-circle">
                                   
                                </div>
                                <h3>Luke</h3>
                                <p class="role">CTO</p>

                                <div class="social">
                                    <a href="<c:url value="http://www.facebook.com"/>" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="<c:url value="http://www.googleplus.com"/>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="<c:url value="http://www.twitter.com"/>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="<c:url value="http://www.gmail.com"/>" class="external email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                </div>
                                <div class="text">
                                    <p>All latest technologies used for the website and safety of products and security for transaction is achieved</p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                            <div class="team-member">
                                <div class="image">
                                   
                                        <img src="<c:url value="/resources/img/person-3.png"/>" alt="" class="img-responsive img-circle">
                                    
                                </div>
                                <h3>Princess Leia</h3>
                                <p class="role">Team Leader</p>
                                <div class="social">
                                    <a href="<c:url value="http://www.facebook.com"/>" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="<c:url value="http://www.googleplus.com"/>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="<c:url value="http://www.twitter.com"/>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="<c:url value="http://www.gmail.com"/>" class="external email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                  </div>
                                <div class="text">
                                    <p>The credit goes my team who worked day and night to achieve this mission</p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                            <div class="team-member">
                                <div class="image">
                                   
                                        <img src="<c:url value="/resources/img/person-4.jpg"/>" alt="" class="img-responsive img-circle">
                                   
                                </div>
                                <h3>Jabba Hut</h3>
                                <p class="role">Lead Developer</p>
                                <div class="social">
                                    <a href="<c:url value="http://www.facebook.com"/>" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="<c:url value="http://www.googleplus.com"/>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="<c:url value="http://www.twitter.com"/>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="<c:url value="http://www.gmail.com"/>" class="external email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                </div>
                                <div class="text">
                                    <p>Developing projects is a major task and we have successfully deployed</p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                    </div>
                    <!-- /.row -->


                </div>
                <!-- /.container -->
            </section>
 --%>

    </div>
    <!-- /#all -->

		<%@include file="/WEB-INF/views/Footer.jsp"%>

	</div>
	<!-- /#all -->

	

	

<%-- <%@include file="/WEB-INF/views/gmap.jsp"%> --%>

	<!-- #### JAVASCRIPT FILES ### -->
	<%@include file="/WEB-INF/views/scriptfiles.jsp"%>


</body>

</html>