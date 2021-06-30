<!DOCTYPE HTML>
<html>
    <head>
        <title>House Rent Management</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/responsiveslides.css">
        <link rel="stylesheet" href="css/examples.css">
        <link rel="icon" type="image/png" sizes="32x52" href="assets/img/police-stop.png">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <!--navbar-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <!--<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">-->
    </head>
    <body>
        <div class="header"></div>
        <!----start-main-header----->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="collapse navbar-collapse navbar-right" id="navbar">
                    <div class="top-nav">
                        <a href="index" class="hover-effect scroll">
                            <span>
                               <span>HOME</span>
                                <span>HOME</span>
                                <span></span>
                            </span>
                        </a>

<!--                        <a href="#services" class="hover-effect scroll">
                            <span>
                                <span>SERVICES</span>
                                <span>SERVICES</span>
                                <span></span>
                            </span>
                        </a>-->

                        <a href="map" class="hover-effect scroll">
                            <span>
                                <span>HOUSES</span>
                                <span>HOUSES</span>
                                <span></span>
                            </span>
                        </a>
                        <a id="logout" href="login" class="hover-effect scroll">
                            <span>
                                <span>LOGOUT</span>
                                <span>LOGOUT</span>
                                <span></span>
                            </span>
                        </a>
                        <a href="adminPanel" class="hover-effect scroll">
                            <span>
                                <span>ADMINISTRATION</span>
                                <span>ADMINISTRATION</span>
                                <span></span>
                            </span>
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll, .navbar li a, .footer li a").click(function (event) {
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!----End-main-header----->
        
<div class="clear"> </div>
