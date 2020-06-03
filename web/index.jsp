<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Pariksha Online</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
        <meta property="og:title" content="">
        <meta property="og:image" content="">
        <meta property="og:url" content="">
        <meta property="og:site_name" content="">
        <meta property="og:description" content="">

        <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="">
        <meta name="twitter:title" content="">
        <meta name="twitter:description" content="">
        <meta name="twitter:image" content="">

        <!-- Fav and touch icons -->
        <link rel="shortcut icon" href="img/parikshaOnline.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/icons/114x114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/icons/72x72.png">
        <link rel="apple-touch-icon-precomposed" href="img/icons/default.png" >

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.theme.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.transitions.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body class="page-index has-hero">
        <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
        <div id="background-wrapper" class="buildings" data-stellar-background-ratio="0.1">

            <!-- ======== @Region: #navigation ======== -->
            <div id="navigation" class="wrapper">

                <!--Header & navbar-branding region-->
                <%@ include file = "header.jsp"%>
                <div class="container">


                    <div class="hero" id="highlighted">
                        <div class="inner">
                            <!--Slideshow-->
                            <div id="highlighted-slider" class="container">
                                <div class="item-slider" data-toggle="owlcarousel" data-owlcarousel-settings='{"singleItem":true, "navigation":true, "transitionStyle":"fadeUp"}'>
                                    <!--Slideshow content-->
                                    <!--Slide 1-->
                                    <div class="item">
                                        <div class="row">
                                            <div class="col-md-6 col-md-push-6 item-caption">
                                                <h2 class="h1 text-weight-light">
                                                    Welcome to <span class="text-primary">Pariksha Online</span>
                                                </h2>

                                                <h4 style="line-height: 1.5;">Pariksha Online is a free web based service which helps in conducting online mid sem examination in university.<br>Thus digitalising the traditional process.</h4>

                                            </div>
                                            <div class="col-md-6 col-md-pull-6 hidden-xs">
                                                <img src="img/exam2.png" alt="Slide 1" class="center-block img-responsive" style="height:70%; width: 70%;">
                                            </div>
                                        </div>
                                    </div>
                                    <!--Slide 2-->
                                    <div class="item">
                                        <div class="row">
                                            <div class="col-md-6 text-right-md item-caption">
                                                <h2 class="h1 text-weight-light">
                                                    <span class="text-primary">Cloud</span>Based Platform
                                                </h2>

                                                <h4 style="line-height: 1.5;"><br>It is cloud based platform with autoscale facility to manage<br> examinations of any scale.<br>In this way cloud environment enables maximum utilization of<br> resources during actual online exam time and reduces or scale<br> down the resource utilization when examination is completed.

                                                </h4>

                                            </div>
                                            <div class="col-md-6 hidden-xs">
                                                <img src="img/clloud.png" alt="Slide 2" class="center-block img-responsive">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ======== @Region: #content ======== -->
                <div id="content">
                    <!-- Mission Statement -->
                    <div class="mission text-center block block-pd-sm block-bg-noise">
                        <div class="container">
                            <h2 class="text-shadow-white">
                                We provide a full free service for conducting Online Mid Sem Examination in university. 

                            </h2>
                        </div>
                    </div>
                    <!--Showcase-->
                    <div class="showcase block block-border-bottom-grey">
                        <div class="container">
                            <h2 class="block-title">
                                List Of Colleges
                            </h2>
                            <p>Here is a quick link to the website of popular Colleges of M.P. which are affilated to RGPV University.</p>
                            <div class="item-carousel" data-toggle="owlcarousel" data-owlcarousel-settings='{"items":4, "pagination":false, "navigation":true, "itemsScaleUp":true}'>
                                <div class="item">
                                    <a href="https://lnct.ac.in/lnct-group" class="overlay-wrapper">
                                        <img src="img/lnct1.jpeg" alt="LNCT Group of Colleges" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">LNCT Group of Colleges</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="https://lnct.ac.in/lnct-group">LNCT Group of Colleges</a>
                                        </h4>
                                        <a href="https://lnct.ac.in/lnct-group" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="http://www.oistbpl.com" class="overlay-wrapper">
                                        <img src="img/ost.jpeg" alt="Oriental Group of Institutes" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">Oriental Group of Institutes</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="http://www.oistbpl.com">Oriental Group of Institutes</a>
                                        </h4>
                                        <a href="http://www.oistbpl.com" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="http://titbhopal.net" class="overlay-wrapper">
                                        <img src="img/tit.jpeg" alt="Technocrats Institute of Technology" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">Technocrats Institute of Technology</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="http://titbhopal.net">Technocrats Institute of Technology</a>
                                        </h4>
                                        <a href="http://titbhopal.net" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="https://sirtbhopal.ac.in" class="overlay-wrapper">
                                        <img src="img/sirt.jpeg" alt="Sagar Group of Institutions" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">Sagar Group of Institutions</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="https://sirtbhopal.ac.in">Sagar Group of Institutions</a>
                                        </h4>
                                        <a href="https://sirtbhopal.ac.in" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="http://www.bistbpl.in" class="overlay-wrapper">
                                        <img src="img/bansal.jpeg" alt="BANSAL Institute of Science and Technology" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">BANSAL Institute of Science and Technology</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="http://www.bistbpl.in/">BANSAL Institute of Science and Technology</a>
                                        </h4>
                                        <a href="http://www.bistbpl.in/" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="http://trinitycampus.in" class="overlay-wrapper">
                                        <img src="img/trinity.jpeg" alt="Trinity Institute Of Technology & Research" class="img-responsive underlay">
                                        <span class="overlay">
                                            <span class="overlay-content"> <span class="h4">Trinity Institute Of Technology & Research</span> </span>
                                        </span>
                                    </a>
                                    <div class="item-details bg-noise">
                                        <h4 class="item-title">
                                            <a href="http://trinitycampus.in">Trinity Institute Of Technology & Research</a>
                                        </h4>
                                        <a href="http://trinitycampus.in" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Services -->
            <div class="services block block-bg-gradient block-border-bottom">
                <div class="container">
                    <h2 class="block-title">
                        Our Services
                    </h2>
                    <div class="row">
                        <div class="col-md-4 text-center">
                            <span class="fa-stack fa-5x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span>
                            <h4 class="text-weight-strong">
                                Add Questions
                            </h4>
                            <p>In this Stage, You can use the vast range of Questions available in Your Question Bank to Add in Test. You have many option to add question like add manually or add from your question bank. Hence this is very easy and time saving process.</p>
                            <p>
                                <a href="#" class="btn btn-more i-right">Learn More <i class="fa fa-angle-right"></i></a>
                            </p>
                        </div>
                        <div class="col-md-4 text-center">
                            <span class="fa-stack fa-5x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-file fa-stack-1x fa-inverse"></i> </span>
                            <h4 class="text-weight-strong">
                                Paper Setting
                            </h4>
                            <p>Paper Setting is the Platform where you conduct and Organize Tests as and when You Desire. Very useful and Helpful Paper Setting that will give so many options / Edges to Schedule the test for Students.</p>
                            <p>
                                <a href="#" class="btn btn-more i-right">Learn More <i class="fa fa-angle-right"></i></a>
                            </p>
                        </div>
                        <div class="col-md-4 text-center">
                            <span class="fa-stack fa-5x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-clock-o fa-stack-1x fa-inverse"></i> </span>
                            <h4 class="text-weight-strong">
                                Schedule
                            </h4>
                            <p>This is Last Step of Paper creation Process. Here you can schedule your test according to class, branch and semester.</p>
                            <p>
                                <a href="#" class="btn btn-more i-right">Learn More <i class="fa fa-angle-right"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /content -->

        <!-- ======== @Region: #footer ======== -->
        <%@ include file ="footer.jsp"%>

        <!-- Required JavaScript Libraries -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/stellar/stellar.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="contactform/contactform.js"></script>

        <!-- Template Specisifc Custom Javascript File -->
        <script src="js/custom.js"></script>

        <!--Custom scripts demo background & colour switcher - OPTIONAL -->
        <script src="js/color-switcher.js"></script>

        <!--Contactform script -->
        <script src="contactform/contactform.js"></script>

    </body>

</html>
