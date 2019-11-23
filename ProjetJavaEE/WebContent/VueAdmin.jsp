<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bienvenue </title>

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
                <div  class="col-5 col-sm-6">
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
                            <div class="register">
                                <a href="">Deconnexion</a>
                            </div>
                        </div>
                        <!-- Search Button Area -->
                        <div class="search_button">
                            <a class="searchBtn" href="ControllerServlet"><i class="fa fa-power-off" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Top Header Area End ****** -->

    <!-- ****** Header Area Start ****** -->
    <header class="header_area">
        <div class="container">
            <div class="row">
                <!-- Logo Area Start -->
                <div class="col-12">
                    <div  class="text-center">
                    <img  height="230" width="380"  src="img/bg-img/marocar.png"/>
                    </div>
                </div>
                </div>

            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-nav" aria-controls="yummyfood-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                        <!-- Menu Area Start -->
                        <div class="collapse navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="ControllerServlet?action=Admin">Accueil <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="ControllerServlet?action=Archive">Archive</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="ControllerServlet?action=Contact">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ****** Header Area End ****** -->

    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(img/bg-img/agence.jpg);  ">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>MAROCAR</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Accueil</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Single Blog Area Start ****** -->
    <section class="single_blog_area section_padding_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row no-gutters">

                    <!-- Single Post -->
                        <div class="col-10 col-sm-11">
                            <!-- Related Post Area -->
                                <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>RECHERCHE DES VOITURES </h6>
                            </div>
                                </div>
                 <!-- ****** Top Header Area Start ****** -->
    <div class="top_header_area">
        <div class="container">
            <div class="row">
                <div class="col-5 col-sm-6">
                            <div class="top_social_bar">
                               <b style="color:#FF4500"><a ><i class="fa fa-tags" aria-hidden="true"></i></a></b>
                          <h4 ><span>&nbsp&nbsp&nbsp</span><u style="color:#FF4500"> Recherche des Voitures :</u></h4>
                    </div>
                </div>
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <!-- Search Button Area -->
                        <div class="search_button">
                            <a class="searchBtn" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                        <!-- Search Form -->
                        <div class="search-hidden-form">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search-anything" placeholder="Saisir la marque que vous desirer">
                                <input type="submit" value="" class="d-none">
                                <span class="searchBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><br>
    <!-- ****** Top Header Area End ****** -->

                            <div class="related-post-area section_padding_50">
                                <div class="related-post-slider owl-carousel">
                                    <!-- Single Related Post-->
                                    <div class="single-post">
                                        <!-- Post Thumb -->
                                        <div class="post-thumb">
                                            <img src="img/blog-img/15.jpg" alt="">
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
                                            </div>
                                            <a href="#">
                                                <h6>The Top Breakfast And Brunch Spots In Hove</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- Single Related Post-->
                                    <div class="single-post">
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
                                                        <a href="#">By Marian</a>
                                                    </div>
                                                    <!-- Post Date -->
                                                    <div class="post-date">
                                                        <a href="#">May 19, 2017</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="#">
                                                <h6>The Top Breakfast And Brunch Spots In Hove</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- Single Related Post-->
                                    <div class="single-post">
                                        <!-- Post Thumb -->
                                        <div class="post-thumb">
                                            <img src="img/blog-img/16.jpg" alt="">
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
                                            </div>
                                            <a href="#">
                                                <h6>The Top Breakfast And Brunch Spots In Hove</h6>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- Single Related Post-->
                                    <div class="single-post">
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
                                                        <a href="#">By Marian</a>
                                                    </div>
                                                    <!-- Post Date -->
                                                    <div class="post-date">
                                                        <a href="#">May 19, 2017</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="#">
                                                <h6>The Top Breakfast And Brunch Spots In Hove</h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Comment Area Start -->
                            <div class="comment_area section_padding_50 clearfix">
                                 <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>Visualiser les clients </h6>
                            </div>
                                </div>
                         <table id="mytable" class="table-responsive table table-bordred table-striped">
                            <tr>
                            <th>IdClient</th>  <th>Nom</th>  <th>Prenom</th> <th>CIN</th> <th>Adresse</th> <th>Tel</th> <th>Modifier</th> <th>Supprimer</th>
                            </tr>
                           <c:forEach items="${model.clients}" var="p">
                            <tr>
                             <td>${p.idClient}</td> 
                             <td>${p.nom}</td> 
                             <td>${p.prenom}</td> 
                             <td>${p.CIN}</td> 
                             <td>${p.adresse}</td> 
                             <td>${p.tel}</td> 
                           <td><p data-placement="top" data-toggle="tooltip" title="EditC"><button class="btn btn-primary btn-xs" data-title="EditC" data-toggle="modal" data-target="#editC" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                           <td><p data-placement="top" data-toggle="tooltip" title="Delete"><a  href="ControllerServlet?action=deleteC&id=${p.idClient }" class="btn btn-danger btn-xs delete" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></a></p></td>
                           </tr>
                           </c:forEach>
                       </table> 
                       <div class="clearfix"></div>
<ol class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li><br>
</ol>
  <p style="margin-top:50px; margin-left:444px;" data-placement="top" data-toggle="tooltip" title="AjouterC"><button class="btn  btn-outline-secondary btn-lg btn-block" data-title="AjouterC" data-toggle="modal" data-target="#AjouterC" ><span class="glyphicon glyphicon-plus"></span><span>&nbsp&nbsp</span>Ajouter</button></p>

                         </div><br>
                             <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>Visualiser les managers </h6>
                            </div>
                                </div>
                               <table id="mytable" class="table-responsive table table-bordred table-striped" >
                            <tr>
                            <th>IdManager</th>  <th>Nom</th>  <th>Prenom</th> <th>CIN</th> <th>NCarteCredit</th> <th>PermisConduite</th> <th>Modifier</th> <th>Supprimer</th>
                            </tr> 
                           <c:forEach items="${model.managers}" var="p">
                            <tr>
                             <td>${p.idManager}</td> 
                             <td>${p.nom}</td> 
                             <td>${p.prenom}</td> 
                             <td>${p.CIN}</td>
                             <td>${p.NCarteCredit}</td>
                             <td>${p.permisConduite}</td>
                            <td><p data-placement="top" data-toggle="tooltip" title="EditM"><button class="btn btn-primary btn-xs" data-title="EditM" data-toggle="modal" data-target="#editM" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                           <td><p data-placement="top" data-toggle="tooltip"  title="Delete"><a  href="ControllerServlet?action=deleteM&id=${p.idManager }" class="btn btn-danger btn-xs delete" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></a></p></td>
                          </tr>
                           </c:forEach>
                       </table>
                         <div class="clearfix"></div>
<ol class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ol>
 <p style="margin-top:50px; margin-left:444px;" data-placement="top" data-toggle="tooltip" title="AjouterM"><button class="btn  btn-outline-secondary btn-lg btn-block" data-title="AjouterM" data-toggle="modal" data-target="#AjouterM" ><span class="glyphicon glyphicon-plus"></span><span>&nbsp&nbsp</span>Ajouter</button></p>

                        </div>
                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="blog-sidebar mt-5 mt-lg-0">
                   
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
    <!-- ****** Single Blog Area End ****** -->

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
                            <a href="VueClient.jsp" class="yummy-logo">Marocar</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="ControllerServlet?action=Admin">Accueil <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ControllerServlet?action=Archive">Archive</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ControllerServlet?action=Contact">Contact</a>
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
    
<div class="modal fade" id="editC" tabindex="-1" role="dialog" aria-labelledby="editC" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Modifier ce client</h4>
      </div>
          <div class="modal-body">
           <div class="form-group">
        <input class="form-control" type="text" placeholder="IdClient" disabled>
        </div>
          <div class="form-group">
        <input class="form-control" type="text" placeholder="Nom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="Prenom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="CIN">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="Adresse"></textarea>
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="Tel">
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Modifier</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
  </div>
  
      
<div class="modal fade" id="editM" tabindex="-1" role="dialog" aria-labelledby="editM" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Modifier ce manager</h4>
      </div>
          <div class="modal-body">
            <div class="form-group">
        <input class="form-control" type="text" placeholder="IdManager" disabled>
        </div>
          <div class="form-group">
        <input class="form-control" type="text" placeholder="Nom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="Prenom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="CIN">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="NCarteCredis">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" placeholder="PermisConduite">
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Modifier</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
  </div>
  
  
  
   <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Supprimer cette element</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Vous etes sur que vous voulez supprimer?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" id="confirmModalYes"><span class="glyphicon glyphicon-ok-sign"></span> Oui</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="confirmModalYes"><span class="glyphicon glyphicon-remove"></span> Non</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    <!-- ****** Footer Menu Area End ****** -->

<div class="modal fade" id="AjouterC" tabindex="-1" role="dialog" aria-labelledby="AjouterC" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Ajouter un client</h4>
      </div>
       <form action="ControllerServlet" method="Post">
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control" type="text" name="IdClient" placeholder="IdClient" disabled>
        </div>
          <div class="form-group">
        <input class="form-control" type="text" name="Nom" placeholder="Nom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="Prenom" placeholder="Prenom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="CIN" placeholder="CIN">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" name="Adresse" placeholder="Adresse"></textarea>
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="Tel" placeholder="Tel">
        </div>
      </div>
          <div class="modal-footer ">
        <button type="submit" name="action" value="AjouterC" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Ajouter</button>
      </div>
      </form>
        </div>
    <!-- /.modal-content --> 
  </div>
  </div>
  
  
<div class="modal fade" id="AjouterM" tabindex="-1" role="dialog" aria-labelledby="AjouterM" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Ajouter un manager</h4>
      </div>
      <form action="ControllerServlet" method="Post">
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control" type="text" name="IdManager" placeholder="IdManager" disabled>
        </div>
          <div class="form-group">
        <input class="form-control" type="text" name="Nom" placeholder="Nom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="Prenom" placeholder="Prenom">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="CIN" placeholder="CIN">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="NCarteCredit" placeholder="NCarteCredit">
        </div>
        <div class="form-group">
        <input class="form-control " type="text" name="PermisConduite" placeholder="PermisConduite">
        </div>
      </div>
          <div class="modal-footer ">
        <button type="submit" name="action" value="AjouterM" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Ajouter</button>
      </div>
      </form>
        </div>
    <!-- /.modal-content --> 
  </div>
  </div>
  <script>
  $(document).ready(function () {
      var theHREF;

      $(".delete").click(function(e) {
          e.preventDefault();
          theHREF = $(this).attr("href");
          $("#delete").modal("show");
      });

      $("#confirmModalNo").click(function(e) {
          $("#delete").modal("hide");
      });

      $("#confirmModalYes").click(function(e) {
          window.location.href = theHREF;
      });
  });
	      
  </script>
  
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
