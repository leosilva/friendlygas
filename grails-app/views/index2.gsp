<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Freelancer - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
    <asset:stylesheet src="bootstrap.css" />
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css" />
    <asset:stylesheet src="freelancer.css" />

    <!-- Custom fonts for this template -->
    <!--<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCFv3XU2PyXD81SFJZC8r8o3ffWrRdShDg"></script>

    <!-- Custom styles for this template -->
    <!--<link href="css/freelancer.min.css" rel="stylesheet">-->

    <asset:javascript src="jquery.js" />
    <asset:javascript src="popper.js" />
    <asset:javascript src="bootstrap.js" />
    <asset:javascript src="jquery.easing.js" />
    <asset:javascript src="jqBootstrapValidation.js" />
    <asset:javascript src="freelancer.js" />


    <style>
        #gMapsDiv {
            height: 400px;
            width: 100%;
        }
        .customStar {
            color: yellow;
            -webkit-text-stroke-width: 1px;
            -webkit-text-stroke-color: orange;
        }

        #infoWindow {
            height: 60px;
        }

        #infoWindow p {
            font-size: 12px;
            margin-bottom: 5px;
        }

        .stars-font-size {
            font-size: 14px !important;
        }
    </style>

    <script>
        $(document).ready(function(){
            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition)
                } else {
                    console.log("Geolocation is not supported by this browser.");
                }
            }

            function showPosition(position) {
                var uluru = {lat: position.coords.latitude, lng: position.coords.longitude};
                var map = new google.maps.Map(document.getElementById('gMapsDiv'), {
                    zoom: 17,
                    center: uluru
                });
                createMarker(uluru, map);
                createCircle(uluru, map)

            }

            function createMarker(position, map) {

                var contentString = '<div id="infoWindow">'+
                    '<div>'+
                    '<p><span class="font-weight-bold">Posto AlgumaCoisa LTDA</span></p>' +
                    '<p><span class="font-weight-bold">Preço:</span> R$ 3,85</p>' +
                    '<p class="stars-font-size">' +
                    '<i class="fa fa-star customStar"></i>' +
                    '<i class="fa fa-star customStar"></i>' +
                    '<i class="fa fa-star customStar"></i>' +
                    '<i class="fa fa-star-half-o customStar"></i>' +
                    '<i class="fa fa-star-o customStar"></i>' +
                    '</p>' +
                    '</div>'+
                    '</div>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                var marker = new google.maps.Marker({
                    position: position,
                    map: map
                });

                marker.addListener('click', function() {
                    infowindow.open(map, marker);
                });

            }

            function createCircle(position, map) {
                var cityCircle = new google.maps.Circle({
                    strokeColor: '#FF0000',
                    strokeOpacity: 0.5,
                    strokeWeight: 2,
                    fillColor: '#FF0000',
                    fillOpacity: 0.20,
                    map: map,
                    center: position,
                    radius: 1000
                });
            }

            getLocation()
        })
    </script>
</head>
<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top"><i class="fa fa-fire"></i> FriendlyGas</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header -->
<header class="masthead">
    <div class="container">
        <!--<img class="img-fluid" src="img/profile.png" alt="">-->
        <asset:image src="profile.png" class="img-fluid" alt="" />
        <div class="intro-text">
            <span class="name">Start Bootstrap</span>
            <hr class="star-light">
            <span class="skills">Web Developer - Graphic Artist - User Experience Designer</span>
        </div>
    </div>
</header>

<div id="gMapsDiv"></div>



<!-- Portfolio Grid Section -->
<!--<section id="portfolio">
    <div class="container">
        <h2 class="text-center">Portfolio</h2>
        <hr class="star-primary">
        <div class="row">
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/cabin.png" class="img-fluid" alt="" />
                </a>
            </div>
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal2" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/cake.png" class="img-fluid" alt="" />
                </a>
            </div>
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal3" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/circus.png" class="img-fluid" alt="" />
                </a>
            </div>
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal4" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/game.png" class="img-fluid" alt="" />
                </a>
            </div>
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal5" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/safe.png" class="img-fluid" alt="" />
                </a>
            </div>
            <div class="col-sm-4 portfolio-item">
                <a class="portfolio-link" href="#portfolioModal6" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search-plus fa-3x"></i>
                        </div>
                    </div>
                    <asset:image src="portfolio/submarine.png" class="img-fluid" alt="" />
                </a>
            </div>
        </div>
    </div>
</section>
-->
<!-- About Section
<section class="success" id="about">
    <div class="container">
        <h2 class="text-center">About</h2>
        <hr class="star-light">
        <div class="row">
            <div class="col-lg-4 ml-auto">
                <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
            </div>
            <div class="col-lg-4 mr-auto">
                <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
            </div>
            <div class="col-lg-8 mx-auto text-center">
                <a href="#" class="btn btn-lg btn-outline">
                    <i class="fa fa-download"></i>
                    Download Theme
                </a>
            </div>
        </div>
    </div>
</section>
-->

<!-- Footer -->
<footer class="text-center">
    <div class="footer-above">
        <div class="container">
            <div class="row">
                <div class="footer-col col-md-4">
                    <h3>Location</h3>
                    <p>3481 Melrose Place
                        <br>Beverly Hills, CA 90210</p>
                </div>
                <div class="footer-col col-md-4">
                    <h3>Around the Web</h3>
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <a class="btn-social btn-outline" href="#">
                                <i class="fa fa-fw fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn-social btn-outline" href="#">
                                <i class="fa fa-fw fa-google-plus"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn-social btn-outline" href="#">
                                <i class="fa fa-fw fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn-social btn-outline" href="#">
                                <i class="fa fa-fw fa-linkedin"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn-social btn-outline" href="#">
                                <i class="fa fa-fw fa-dribbble"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-col col-md-4">
                    <h3>About Freelancer</h3>
                    <p>Freelance is a free to use, open source Bootstrap theme created by
                        <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    Copyright &copy; Your Website 2017
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
<div class="scroll-top d-lg-none">
    <a class="btn btn-primary js-scroll-trigger" href="#page-top">
        <i class="fa fa-chevron-up"></i>
    </a>
</div>

<!-- Portfolio Modals -->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/cabin.png" alt="">-->
                            <asset:image src="portfolio/cabin.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/cake.png" alt="">-->
                            <asset:image src="portfolio/cake.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/circus.png" alt="">-->
                            <asset:image src="portfolio/circus.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/game.png" alt="">-->
                            <asset:image src="portfolio/game.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/safe.png" alt="">-->
                            <asset:image src="portfolio/safe.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <!--<img class="img-fluid img-centered" src="img/portfolio/submarine.png" alt="">-->
                            <asset:image src="portfolio/submarine.png" class="img-fluid img-centered" alt="" />
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by
                                <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong>
                                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong>
                                        <a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong>
                                        <a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button class="btn btn-success" type="button" data-dismiss="modal">
                                <i class="fa fa-times"></i>
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript -->
<!--<script src="vendor/jquery/jquery.min.js"></script>-->

<!--<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>


<script src="vendor/jquery-easing/jquery.easing.min.js"></script>


<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>


<script src="js/freelancer.min.js"></script>-->

</body>
</html>
