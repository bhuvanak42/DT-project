<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                    <div class="col-md-6">
                        <h1>Blog</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="<c:url value='/index'/>">Home</a>
                            </li>
                            <li>Blog </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">
                <div class="row">
                    <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                    <div class="col-md-9" id="blog-listing-big">

                        <section class="post">
                            <h2>iPhone 7</h2>
                            <div class="row">
                                <div class="col-sm-6">
                                   By John Snow in Webdesign
                                  
                                </div>
                                <div class="col-sm-6">
                                    <p class="date-comments">
                                       <i class="fa fa-calendar-o"></i> June 20, 2016
                                    </p>
                                </div>
                            </div>
                            <div class="image">
                                
                                    <img src="<c:url value='/resources/img/blog2.jpg'/>" class="img-responsive" alt="Example blog post alt">
                              
                            </div>
                            <p class="intro">iPhone 7 comes with dimensions 138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in). 
                            IP67 certified - dust and water resistant. Water resistant up to 1 meter and 30 minutes. With platform as iOS 10.0.1 OS, Apple A10 Fusion chipset, Quad-core CPU, six-core graphics GPU</p>
                         
                        </section>


                        <section class="post">
                            <h2>Features</h2>
                            <!-- <div class="row">
                                <div class="col-sm-6">
                                     <p class="author-category">By John Snow  in Webdesign
                                    </p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="date-comments">
                                        <!-- <i class="fa fa-calendar-o"></i> June 20, 2016
                                      
                                    </p>
                                </div>
                            </div>
                            <div class="video">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <!-- <iframe class="embed-responsive-item" src="//www.youtube.com/embed/upZJpGrppJA"></iframe> -->
                                    <!-- <iframe class="embed-responsive-item" src="//www.youtube.com/watch?v=ZdJ7zga2yGg">https://www.youtube.com/watch?v=uVRcbo9_OdA</iframe>
                                </div> 

                            </div> -->
                            <p class="intro">
                            1. Design (Refined Design, Jet Black Finish, High Glass Finish, Stainless Steel Apple Logo)

<br>2. Home Button ( Home, Multitasking, Siri, Accessibility, Touch ID, Reachability, Apple Pay)> More Responsive, More customizable

<br>3. Ear Buds Lightning Digital Audio Power and Control 900 million Lightning Connector Devices

<br>4. Camera (optical image stabilization, six element lens, High Speed Sensor, 60% faster, 30% more energy efficient, quad-LED, True Tone Flash, 50% more Light Flickr Sensor, Apple-designed image signal processor) ISP: Reads the scene and Face and Body detection, exposure> Focus>Noice Deduction>White Balance and many more Over 100 billion operataions in 25 milli seconds while taking a picture

<br>5. Retina HD Display 25% brighter display Wide Color Gamut Cima Standard Color Management 3D Touch

<br>6. Audio Speakers (Built-in) Sterio Speakers (1 is at bottom and one at top) Increased Dynamic Range 2x Time better

</p>
                           
                        </section>


                    </div>
                   

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


     <%@include file="/WEB-INF/views/Footer.jsp"%>

</div>
	<!-- /#all -->

	

	

	<!-- #### JAVASCRIPT FILES ### -->
	<%@include file="/WEB-INF/views/scriptfiles.jsp"%>
</body>
</html>
