<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>BSH</title>
		<meta name="description" content="A simple slideshow component with individual slide layouts and effects" />
		<meta name="keywords" content="slideshow, images, layout, asymmetric, css, html, javascript, template" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Gochi+Hand" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css1/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css1/demo.css" />
		<link rel="stylesheet" type="text/css" href="css1/slideshow.css" />
		<link rel="stylesheet" type="text/css" href="css1/slideshow_layouts.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  		<style>
			.ie-message { display: inline-block; }
  		</style>
		<![endif]-->
		<script>document.documentElement.className = 'js';</script>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css2/bootstrap.min.css">
		<!-- owl carousel CSS -->
		<link rel="stylesheet" href="css2/owl.carousel.min.css">
		<!-- themify CSS -->
		<link rel="stylesheet" href="css2/themify-icons.css">
		<!-- flaticon CSS -->
		<link rel="stylesheet" href="css2/flaticon.css">
		<!-- fontawesome CSS -->
		<link rel="stylesheet" href="fontawesome/css/all.min.css">
		<!-- magnific CSS -->
		<link rel="stylesheet" href="css2/magnific-popup.css">
		<link rel="stylesheet" href="css2/gijgo.min.css">
		<!-- niceselect CSS -->
		<link rel="stylesheet" href="css2/nice-select.css">
		<!-- slick CSS -->
		<link rel="stylesheet" href="css2/slick.css">
		<!-- style CSS -->
		<link rel="stylesheet" href="css2/style.css">
	</head>
	<body>
	<!--::header part start::-->
   <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="Main.jsp"> <img src="img2/fivelogo.png" width="180px" height="80px" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="Main.jsp">Home</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="top_place.jsp" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Top7 Places
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="GwangjuPlaces.jsp">Gwangju</a>
                                            <a class="dropdown-item" href="JeonjuPlaces.jsp">Jeonju</a>
                                            <a class="dropdown-item" href="DamyangPlaces.jsp">Damyang</a>
                                            <a class="dropdown-item" href="JindoPlaces.jsp">Jindo</a>
                                            <a class="dropdown-item" href="BosungPlaces.jsp">Bosung</a>
                                            <a class="dropdown-item" href="YeosuPlaces.jsp">Yeosu</a>
                                            <a class="dropdown-item" href="SuncheonPlaces.jsp">Suncheon</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="packages.jsp" id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Top7 Taste Food
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" href="GwangjuRestaurant.jsp">Gwangju</a>
                                            <a class="dropdown-item" href="JeonjuRestaurant.jsp">Jeonju</a>
                                            <a class="dropdown-item" href="DamyangRestaurant.jsp">Damyang</a>
                                            <a class="dropdown-item" href="JindoRestaurant.jsp">Jindo</a>
                                            <a class="dropdown-item" href="BosungRestaurant.jsp">Bosung</a>
                                            <a class="dropdown-item" href="YeosuRestaurant.jsp">Yeosu</a>
                                            <a class="dropdown-item" href="SuncheonRestaurant.jsp">Suncheon</a>
                                        </div>
                                    </li>
                            <% MemberDTO log = (MemberDTO)session.getAttribute("info"); 
                            	if (log != null) {%>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Questions.jsp">1:1 Questions</a>
                                    </li>
                                    <%}%>
                            <% if (log == null) {%><li  class="nav-item">
                            <a class="nav-link" href="Member.jsp"><i class="bi bi-box-arrow-in-right"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
						  	<path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
						  	<path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
							</svg> Login</i></a>
                            </li>
                            <%}else{%><li class="nav-item dropdown">
                             <a class="nav-link dropdown-toggle"id="navbarDropdown"
                                 					 role="button" data-toggle="dropdown" aria-haspopup="true"
                                  				 aria-expanded="false">
                                			<i class="bi bi-person-circle"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16"><path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/><path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/></svg>User Menu</i>
                             </a>
                                   		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                       		<a href="Like.jsp" class="like" style="direction: none;">&nbsp;&nbsp;<i class="bi bi-bookmark-heart-fill"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"  fill="currentColor" class="bi bi-bookmark-heart-fill" viewBox="0 0 16 16"><path d="M2 15.5a.5.5 0 0 0 .74.439L8 13.069l5.26 2.87A.5.5 0 0 0 14 15.5V2a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v13.5zM8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z"/></svg>Wish List</i></a>
                                      			<hr class="dropdown-divider">
                                       		<a href="Upda.jsp" class="update">&nbsp;&nbsp;<i class="bi bi-person-lines-fill"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"  fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16"><path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/></svg>User information</i></a>
                                       			<hr class="dropdown-divider">
                                       		<a href="LogoutCon.do" class="logout">&nbsp;&nbsp;<i class="bi bi-box-arrow-right"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"  fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/><path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/></svg>Logout</i></a>
                                   		</div>
                            		</li>
                            <%}%>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->
    
		<svg class="hidden">
			<defs>
				<symbol id="icon-arrow" viewBox="0 0 24 24">
					<title>arrow</title>
					<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
				</symbol>
				<symbol id="icon-drop" viewBox="0 0 24 24">
					<title>drop</title>
					<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
				</symbol>
				<symbol id="icon-prev" viewBox="0 0 100 50">
					<title>prev</title>
					<polygon points="5.4,25 18.7,38.2 22.6,34.2 16.2,27.8 94.6,27.8 94.6,22.2 16.2,22.2 22.6,15.8 18.7,11.8"/>
				</symbol>
				<symbol id="icon-next" viewBox="0 0 100 50">
					<title>next</title>
					<polygon points="81.3,11.8 77.4,15.8 83.8,22.2 5.4,22.2 5.4,27.8 83.8,27.8 77.4,34.2 81.3,38.2 94.6,25 "/>
				</symbol>
				<symbol id="icon-octicon" viewBox="0 0 24 24">
					<title>octicon</title>
					<path d="M12,2.2C6.4,2.2,1.9,6.7,1.9,12.2c0,4.4,2.9,8.2,6.9,9.6c0.5,0.1,0.7-0.2,0.7-0.5c0-0.2,0-0.9,0-1.7c-2.8,0.6-3.4-1.4-3.4-1.4C5.6,17.1,5,16.8,5,16.8C4.1,16.2,5,16.2,5,16.2c1,0.1,1.5,1,1.5,1c0.9,1.5,2.4,1.1,2.9,0.8c0.1-0.7,0.4-1.1,0.6-1.3c-2.2-0.3-4.6-1.1-4.6-5c0-1.1,0.4-2,1-2.7C6.5,8.8,6.2,7.7,6.7,6.4c0,0,0.8-0.3,2.8,1C10.3,7.2,11.1,7.1,12,7c0.9,0,1.7,0.1,2.5,0.3c1.9-1.3,2.8-1,2.8-1c0.5,1.4,0.2,2.4,0.1,2.7c0.6,0.7,1,1.6,1,2.7c0,3.9-2.4,4.7-4.6,5c0.4,0.3,0.7,0.9,0.7,1.9c0,1.3,0,2.4,0,2.8c0,0.3,0.2,0.6,0.7,0.5c4-1.3,6.9-5.1,6.9-9.6C22.1,6.7,17.6,2.2,12,2.2z" />
				</symbol>
				<!-- From Karen Menezes: https://www.smashingmagazine.com/2015/05/creating-responsive-shapes-with-clip-path/ -->
				<clipPath id="polygon-clip-rhomboid" clipPathUnits="objectBoundingBox">
					<polygon points="0 1, 0.3 0, 1 0, 0.7 1" />
				</clipPath>
			</defs>
		</svg>
		<main>
			<div class="slideshow" tabindex="0">
				<div class="slide slide--layout-1" data-layout="layout1">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성강골마을1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성강골마을11.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성강골마을23.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h5 class="slide__title-sub">Ganggol Village</h5>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-4" data-layout="layout4">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성녹차밭1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성녹차밭11.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성녹차밭27.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성녹차밭96.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<p class="slide__title-sub">Green Tea Field</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-5" data-layout="layout5">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장7.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장20.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장13.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장9.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장17.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장21.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장31.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장3.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장83.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장88.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장8.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장32.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장37.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장39.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장41.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장48.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장52.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성율포해수욕장80.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<p class="slide__title-sub">Yulpo Beach</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-6" data-layout="layout6">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성득량역1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성득량역23.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성득량역73.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<p class="slide__title-sub">Deuknyang Station</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-7" data-layout="layout7">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성공룡공원24.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성공룡공원25.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/Bosung/보성공룡공원5.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<p class="slide__title-sub">Dinosaur Park</p>
					</div>
				</div><!-- /slide -->
				<nav class="slideshow__nav slideshow__nav--arrows">
					<button id="prev-slide" class="btntntn btntntn--arrow" aria-label="Previous slide"><svg class="icon icon--prev"><use xlink:href="#icon-prev"></use></svg></button>
					<button id="next-slide" class="btntntn btntntn--arrow" aria-label="Next slide"><svg class="icon icon--next"><use xlink:href="#icon-next"></use></svg></button>
				</nav>
			</div><!-- /slideshow -->
		</main>
		<script src="js1/imagesloaded.pkgd.min.js"></script>
		<script src="js1/anime.min.js"></script>
		<script src="js1/main.js"></script>
		<script>
		(function() {
			var slideshow = new MLSlideshow(document.querySelector('.slideshow'));

			document.querySelector('#next-slide').addEventListener('click', function() {
				slideshow.next();
			});

			document.querySelector('#prev-slide').addEventListener('click', function() {
				slideshow.prev();
			});
		})();
		</script>
			<!-- footer part start-->
	<footer class="footer-area">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-sm-6 col-md-5">
					<div class="single-footer-widget" align="center">
						<h4>Jeola Doing</h4>
						<ul>
							<li><a href="./Gwangjuphoto.jsp">Gwangju</a></li>
							<li><a href="./Jeonjuphoto.jsp">Jeonju</a></li>
							<li><a href="./Damyangphoto.jsp">Damyang</a></li>
							<li><a href="./Jindophoto.jsp">Jindo</a></li>
							<li><a href="./Bosungphoto.jsp">Bosung</a></li>
							<li><a href="./Yeosuphoto.jsp">Yeosu</a></li>
							<li><a href="./Suncheonphoto.jsp">Suncheon</a></li>
						</ul>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="single-footer-widget">
						<h4>Subscribe Newsletter</h4>
						<div class="form-wrap" id="mc_embed_signup">
							<form target="_blank" action="#" method="get" class="form-inline">
								<input class="form-control" name="EMAIL"
									placeholder="Your Email Address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Your Email Address '" required=""
									type="email">
								<button class="click-btn btn btn-default text-uppercase">
									<i class="far fa-paper-plane"></i>
								</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a"
										tabindex="-1" value="" type="text">
								</div>

								<div class="info"></div>
							</form>
						</div>
						<p>Subscribe our newsletter to get update news and offers</p>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="single-footer-widget footer_icon">
						<h4>Contact Us</h4>
						<p>
							<a href="https://smhrd.or.kr" class="mobtn">Smart Talent Development
								Center, Gwangju, korea</a>
						</p>
						<br>
						<p>+062 224 4560 | 61927</p>
						<span>JEOLA DOING@gmail.com</span>
						<div class="social-icons">
							<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
								class="ti-twitter-alt"></i></a> <a href="#"><i
								class="ti-pinterest"></i></a> <a href="#"><i
								class="ti-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="copyright_part_text text-center">
						<p class="footer-text m-0">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							BSH &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							Places & Foods | This page with <i class="ti-heart"
								aria-hidden="true"></i> by <a href="Main.jsp" target="_blank">JEOLA
								DOING</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer part end-->
	</body>
</html>