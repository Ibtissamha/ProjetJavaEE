 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Location des voitures</title>

    <!-- Favicon -->
    <link rel="icon" href="img/bg-img/marocar.png">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader">
        <div class="yummy-load"></div>
    </div>
    <!-- Background Pattern Swither -->
    <div id="pattern-switcher">
        Bg Pattern.
    </div>
    <div id="patter-close">
        <i class="fa fa-times" aria-hidden="true"></i>
    </div>
  

    <!-- ****** Top Header Area Start ****** -->
    
       <div class="top_header_area">
        <div class="container">
            <div class="row">
                <div class="col-5 col-sm-6">
                    <!--  Top Social bar start -->
                    <div class="top_social_bar">
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    </div>
                </div>
                 <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <div class="login_register_area d-flex">
                            <div class="login">
                                <a href="#" data-toggle="modal" data-target="#exampleModal">Se connecter</a>
                            </div>
                            <div class="register">
                                <a href="#" data-toggle="modal" data-target="#exampleModal1">S'inscrire</a>
                            </div>
                      </div>
                      <!--    Search Button Area -->
                   </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Header Area Start ****** -->
    <header class="header_area">
        <div class="container">
            <div class="row">
                <!-- Logo Area Start -->
                <div class="col-12">
                    <div  class="text-center">
                    <img  style="padding:  0 0 0 0;" height="250" width="380"  src="img/bg-img/marocar.png"/>
                    </div>
                </div>
            </div>

        </div>
    </header>
    <!-- ****** Header Area End ****** -->

    <!-- ****** Welcome Post Area Start ****** -->
    <section class="welcome-post-sliders owl-carousel">
        <!-- Single Slide -->
          <c:forEach items="${model.voitures}" var="p">
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img height="350" width="150" src="${p.chemin_img }" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">Marocar, 2019</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>${p.marque} ${p.modele} ${p.moteur}</h5>
                    <h6>PRIX : ${p.prix} $/j</h6>
                </a>
            </div>
        </div>
      </c:forEach>
  
    </section>
    <!-- ****** Welcome Area End ****** -->

    <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
                        <img  height="240" width="350" src="img/catagory-img/1.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Voyage</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
                        <img height="240" width="350" src="img/catagory-img/2.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Sport</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
                        <img height="240" width="350" src="img/catagory-img/3.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Mariage</h5>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Categories Area End ****** -->

    <!-- ****** Blog Area Start ****** -->
    <section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">

                        <!-- Single Post -->
                        <div class="col-12">
                            <div class="single-post wow fadeInUp" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img height="400" width="750" src="img/blog-img/1.jpg" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">By Sophia</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h2 class="post-headline">Marocar est une agence de location de voiture pour courte et longue duree</h2>
                                    </a>
                                    <p>Marocar vous propose le service de location de voiture au maroc su internet, dispose d'un parc automobiles assez varie allant de la voiture economique jusqu'a la voiture de luxe.</p>
                                    <a href="#" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".4s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="img/blog-img/2.jpg" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">By Marian</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">Nous vous proposons des voitures de luxe pour un bon voyage .</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".6s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="img/blog-img/3.jpg" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">By Sophia</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">Nous sommes avec vous dans votre travail</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".8s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img height="230" width="400" src="img/blog-img/4.jpg" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">By Shophia</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">Nous vous offrons le meilleur dans votre mariage</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay="1s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="img/blog-img/5.jpg" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">By Sophia</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">Aussi nous sommes a votre disposition dans votre vie quotidien.<h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- ******* List Blog Area Start ******* -->


                        <!-- Single Post -->
                        <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".8s">
                                
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                           
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                 
                                        </div>
                                    </div>
                               
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="blog-sidebar mt-5 mt-lg-0">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>Directrice</h6>
                            </div>
                            <div class="about-me-widget-thumb">
                                <img src="img/about-img/1.jpg" alt="">
                            </div>
                            <h4 class="font-shadow-into-light">Shopia Alaoui</h4>
                            <p>Directrice de l'agence de location de voiture Marocar</p>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area popular-post-widget">
                            <div class="widget-title text-center">
                                <h6>Solde du mois</h6>
                            </div>
                           
                            <!-- Single Popular Post -->
                            <c:forEach items="${model.voituresSolde}" var="p">
                            <div class="single-populer-post d-flex">
                                <img src="${p.chemin_img }" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>${p.marque} ${p.modele} ${p.moteur}</h6>
                                    </a>
                                    <p>Solde de ${p.solde}%</p>
                                </div>
                            </div>
                       </c:forEach>
                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget text-center">
                            <div class="add-widget-area">
                                <img  src="img/sidebar-img/6.jpg" alt="">
                                <div class="add-text">
                                    <div class="yummy-table">
                                        <div class="yummy-table-cell">
                                            <h2>LUXE</h2>
                                            <p>Nouveautes!</p>
                                            <a href="#" class="add-btn">A louer </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area newsletter-widget">
                            <div class="widget-title text-center">
                                <h6>Contactez-Nous</h6>
                            </div>
                            <p>Vous pouvez nous contacter 24/24 h nous sommes a votre disposition .</p>
                            <div class="newsletter-form">
                                <form action="#" method="post">
                                    <input type="email" name="newsletter-email" id="email" placeholder="Votre email">
                                    <button type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Blog Area End ****** -->

    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
         <c:forEach items="${model.voitures}" var="p">
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img height="200" width="100" src="${p.chemin_img }" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Savoir plus</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>
    <!-- ****** Our Creative Portfolio Area End ****** -->

    <!-- ****** Footer Social Icon Area Start ****** -->
    <div class="social_icon_area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-social-area d-flex">
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>facebook</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>GOOGLE+</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i><span>linkedin</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i><span>VIMEO</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i><span>YOUTUBE</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Footer Social Icon Area End ****** -->

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <div class="footer-logo-area text-center">
                            <a href="index.jsp" class="yummy-logo">Marocar</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="http://localhost:8080/monProjet/ControllerServlet">Accueil <span class="sr-only">(current)</span></a>
                                    </li>
                                   
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Copywrite Text -->
                    <div class="copy_right_text text-center">
                        <p>Tele :0588961478 | Email : Marocar@gmail.com <i class="fa fa-heart-o" aria-hidden="true"></i> Avec <a href="https://Marocar.com" target="_blank">Marocar</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- ****** Footer Menu Area End ****** -->
<!-- login modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header bg-theme1">
                    <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="post" class="p-3">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Username</label>
                            <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-name"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label">Password</label>
                            <input type="password" class="form-control" placeholder=" " name="Password" id="password"
                                required="">
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control bg-theme" value="Login">
                        </div>
                        <div class="row sub-w3l my-3">
                            <div class="col sub-w3ltd">
                                <input type="checkbox" id="brand1" value="">
                                <label for="brand1" class="text-dark">
                                    <span></span>Remember me?</label>
                            </div>
                            <div class="col forgot-w3l text-right">
                                <a href="#" class="text-dark">Forgot Password?</a>
                            </div>
                        </div>
                        <p class="text-center dont-do">Don't have an account?
                            <a href="#" data-toggle="modal" data-target="#exampleModal1" class="text-dark">
                                <strong>Register Now</strong></a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //login modal -->
    <!-- register modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header bg-theme1">
                    <h5 class="modal-title" id="exampleModalLabel1">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="post" class="p-3">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Username</label>
                            <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-rname"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="recipient-email" class="col-form-label">Email</label>
                            <input type="email" class="form-control" placeholder=" " name="Email" id="recipient-email"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="password1" class="col-form-label">Password</label>
                            <input type="password" class="form-control" placeholder=" " name="Password" id="password1"
                                required="">
                        </div>
                        <div class="form-group">
                            <label for="password2" class="col-form-label">Confirm Password</label>
                            <input type="password" class="form-control" placeholder=" " name="Confirm Password" id="password2"
                                required="">
                        </div>
                        <div class="sub-w3l">
                            <div class="sub-w3ltd">
                                <input type="checkbox" id="brand2" value="">
                                <label for="brand2" class="mb-3 text-dark">
                                    <span></span>I Accept to the Terms & Conditions</label>
                            </div>
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control bg-theme" value="Register">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //register modal -->
    <!-- Jquery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>
    