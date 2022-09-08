<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>JEOLA DOING</title>
<link rel="shortcut icon" href="favicon.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css2/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="css2/animate.css">
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
<link rel="stylesheet" href="css2/Sub.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto&subset=latin,cyrillic-ext,latin-ext,cyrillic,greek-ext,greek,vietnamese);
@font-face {
	font-family: "demurecontrols";
	src: url("http://cssslider.com/sliders/pen/demurecontrols.eot?cssslidertheme=demure");
	src: url("http://cssslider.com/sliders/pen/demurecontrols.eot#iefix?cssslidertheme=demure") format("embedded-opentype"),
			url("http://cssslider.com/sliders/pen/demurecontrols.woff?cssslidertheme=demure") format("woff"),
			url("http://cssslider.com/sliders/pen/demurecontrols.ttf?cssslidertheme=demure") format("truetype"),
			url("http://cssslider.com/sliders/pen/demurecontrols.svg#demure?cssslidertheme=demure") format("svg");
	font-weight: normal;
	font-style: normal;
}
</style>
</head>
<body>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="main_menu_iner">
			<div class="container">
				<div class="row align-items-center ">
					<div class="col-lg-12">
						<nav
							class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="Main.jsp"> <img
								src="img2/fivelogo.png" width="180px" height="80px" alt="logo">
							</a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div
								class="collapse navbar-collapse main-menu-item justify-content-center"
								id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="Main.jsp">Home</a>
									</li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="top_place.jsp"
										id="navbarDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Top7 Places </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="GwangjuPlaces.jsp">Gwangju</a>
											<a class="dropdown-item" href="JeonjuPlaces.jsp">Jeonju</a> <a
												class="dropdown-item" href="DamyangPlaces.jsp">Damyang</a> <a
												class="dropdown-item" href="JindoPlaces.jsp">Jindo</a> <a
												class="dropdown-item" href="BosungPlaces.jsp">Bosung</a> <a
												class="dropdown-item" href="YeosuPlaces.jsp">Yeosu</a> <a
												class="dropdown-item" href="SuncheonPlaces.jsp">Suncheon</a>
										</div></li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="packages.jsp"
										id="navbarDropdown_1" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Top7 Taste
											Food </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
											<a class="dropdown-item" href="GwangjuRestaurant.jsp">Gwangju</a>
											<a class="dropdown-item" href="JeonjuRestaurant.jsp">Jeonju</a>
											<a class="dropdown-item" href="DamyangRestaurant.jsp">Damyang</a>
											<a class="dropdown-item" href="JindoRestaurant.jsp">Jindo</a>
											<a class="dropdown-item" href="BosungRestaurant.jsp">Bosung</a>
											<a class="dropdown-item" href="YeosuRestaurant.jsp">Yeosu</a>
											<a class="dropdown-item" href="SuncheonRestaurant.jsp">Suncheon</a>
										</div></li>
									<li class="nav-item"><a class="nav-link"
										href="Questions.jsp">1:1 Questions</a></li>
									<%
									MemberDTO log = (MemberDTO) session.getAttribute("info");
									if (log == null) {
									%><li class="nav-item"><a class="nav-link"
										href="Login.jsp"><i class="bi bi-box-arrow-in-right"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-box-arrow-in-right"
													viewBox="0 0 16 16">
                       <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z" />
                       <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                     </svg> Login</i></a></li>
									<%
									} else {
									%><li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> <i class="bi bi-person-circle"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
													<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
													<path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" /></svg>User
												Menu</i></a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a href="Like.jsp" class="like" style="direction: none;">&nbsp;&nbsp;<i
												class="bi bi-bookmark-heart-fill"><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-bookmark-heart-fill"
														viewBox="0 0 16 16">
														<path
															d="M2 15.5a.5.5 0 0 0 .74.439L8 13.069l5.26 2.87A.5.5 0 0 0 14 15.5V2a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v13.5zM8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z" /></svg>Wish
													List</i></a>
											<hr class="dropdown-divider">
											<a href="Upda.jsp" class="update">&nbsp;&nbsp;<i
												class="bi bi-person-lines-fill"><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-person-lines-fill"
														viewBox="0 0 16 16">
														<path
															d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" /></svg>User
													information</i></a>
											<hr class="dropdown-divider">
											<a href="LogoutCon.do" class="logout">&nbsp;&nbsp;<i
												class="bi bi-box-arrow-right"><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-box-arrow-right"
														viewBox="0 0 16 16">
														<path fill-rule="evenodd"
															d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
														<path fill-rule="evenodd"
															d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" /></svg>Logout</i></a>
										</div>
										</li>
									<%
									}
									%>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->

	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="sinhang">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>Gwangju</h2>
							<p>Gwangju . Top Places</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->


	<!-- hotel list css start-->
	<section class="top_place section_padding">
		<div class="container">

			<div class="row">
				<!-- hotel list css start-->
				<div class="row justify-content-center">
					<div class="section_tittle text-center">
										<!-- hotel list css end -->
				<body
					style="background-color: #eeeeee; margin: auto; text-align: center;">
					<!-- Start cssSlider.com -->
					<div class='csslider1 autoplay '>
						<input name="cs_anchor1" id='cs_slide1_0' type="radio"
							class='cs_anchor slide'> <input name="cs_anchor1"
							id='cs_slide1_1' type="radio" class='cs_anchor slide'> <input
							name="cs_anchor1" id='cs_slide1_2' type="radio"
							class='cs_anchor slide'> <input name="cs_anchor1"
							id='cs_play1' type="radio" class='cs_anchor' checked> <input
							name="cs_anchor1" id='cs_pause1' type="radio" class='cs_anchor'>
						<ul>
							<div
								style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
								<img src="http://cssslider.com/sliders/pen/images/buns.jpg"
									style="width: 100%;">
							</div>
							<li class='num0 img'><a href="http://cssslider.com"
								target=""><img
									src='http://cssslider.com/sliders/pen/images/buns.jpg'
									alt='Buns' title='Buns' /> </a></li>
							<li class='num1 img'><a href="http://cssslider.com"
								target=""><img
									src='http://cssslider.com/sliders/pen/images/buns.jpg'
									alt='Croissant' title='Croissant' /> </a></li>
							<li class='num2 img'><a href="http://cssslider.com"
								target=""><img
									src='http://cssslider.com/sliders/pen/images/buns.jpg'
									alt='Lemon pie' title='Lemon pie' /> </a></li>
						</ul>
						<div class='cs_description'>
							<label class='num0'> <span class="cs_title"><span
									class="cs_wrapper">Buns</span></span>
							</label> <label class='num1'> <span class="cs_title"><span
									class="cs_wrapper">Croissant</span></span>
							</label> <label class='num2'> <span class="cs_title"><span
									class="cs_wrapper">Lemon pie</span></span>
							</label>
						</div>

						<div class='cs_arrowprev'>
							<label class='num0' for='cs_slide1_0'></label> <label
								class='num1' for='cs_slide1_1'></label> <label class='num2'
								for='cs_slide1_2'></label>
						</div>
						<div class='cs_arrownext'>
							<label class='num0' for='cs_slide1_0'></label> <label
								class='num1' for='cs_slide1_1'></label> <label class='num2'
								for='cs_slide1_2'></label>
						</div>
						<div class='cs_bullets'>
							<label class='num0' for='cs_slide1_0'> <span
								class='cs_point'></span> <span class='cs_thumb'><img
									src='http://cssslider.com/sliders/pen/tooltips/buns.jpg'
									alt='Buns' title='Buns' /></span>
							</label> <label class='num1' for='cs_slide1_1'> <span
								class='cs_point'></span> <span class='cs_thumb'><img
									src='http://cssslider.com/sliders/pen/tooltips/croissant.jpg'
									alt='Croissant' title='Croissant' /></span>
							</label> <label class='num2' for='cs_slide1_2'> <span
								class='cs_point'></span> <span class='cs_thumb'><img
									src='http://cssslider.com/sliders/pen/tooltips/lemonpie.jpg'
									alt='Lemon pie' title='Lemon pie' /></span>
							</label>
						</div>
					</div>
					<!-- End cssSlider.com -->

					<br />
					<br />
				</body>
					</div>
				</div>
	</section>

				<div class="sinhangs">
					<h3>신호등회관</h3>
					<p>전남 진도군 진도읍 남동1길 66</p>
					<p>10:00 - 21:00</p>
					<p>15:00 - 17:00 브레이크타임</p>
					<p>20:30 라스트오더</p>
					<p>화 휴무</p>
				</div>
			</div>
		</div>

		</div>

	<!-- footer part start-->
	<footer class="footer-area">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-sm-6 col-md-5">
					<div class="single-footer-widget" align="center">
						<h4>Jeola Doing</h4>
						<ul>
							<li><a href="#">Gwangju</a></li>
							<li><a href="#">Jeonju</a></li>
							<li><a href="#">Damyang</a></li>
							<li><a href="#">Jindo</a></li>
							<li><a href="#">Bosung</a></li>
							<li><a href="#">Yeosu</a></li>
							<li><a href="#">Suncheon</a></li>
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
							<a href="https://smhrd.or.kr" class="mobtn">Smart Talent
								Development Center, Gwangju, korea</a>
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

	<!-- jquery plugins here-->
	<script src="js2/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js2/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js2/bootstrap.min.js"></script>
	<!-- magnific js -->
	<script src="js2/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js2/owl.carousel.min.js"></script>
	<!-- masonry js -->
	<script src="js2/masonry.pkgd.js"></script>
	<!-- masonry js -->
	<script src="js2/jquery.nice-select.min.js"></script>
	<script src="js2/gijgo.min.js"></script>
	<!-- contact js -->
	<script src="js2/jquery.ajaxchimp.min.js"></script>
	<script src="js2/jquery.form.js"></script>
	<script src="js2/jquery.validate.min.js"></script>
	<script src="js2/mail-script.js"></script>
	<script src="js2/contact.js"></script>
	<!-- custom js -->
	<script src="js2/custom.js"></script>

	<script type="text/javascript">
		//current position
		var pos = 0;
		//number of slides
		var totalSlides = $('#slider-wrap ul li').length;
		//get the slide width
		var sliderWidth = $('#slider-wrap').width();

		$(document).ready(function() {

			/*****************
			 BUILD THE SLIDER
			 *****************/
			//set width to be 'x' times the number of slides
			$('#slider-wrap ul#slider').width(sliderWidth * totalSlides);

			//next slide  
			$('#next').click(function() {
				slideRight();
			});

			//previous slide
			$('#previous').click(function() {
				slideLeft();
			});

			/*************************
			 //*> OPTIONAL SETTINGS
			 ************************/
			//automatic slider
			var autoSlider = setInterval(slideRight, 3000);

			//for each slide 
			$.each($('#slider-wrap ul li'), function() {

				//create a pagination
				var li = document.createElement('li');
				$('#pagination-wrap ul').append(li);
			});

			//counter
			countSlides();

			//pagination
			pagination();

			//hide/show controls/btns when hover
			//pause automatic slide when hover
			$('#slider-wrap').hover(function() {
				$(this).addClass('active');
				clearInterval(autoSlider);
			}, function() {
				$(this).removeClass('active');
				autoSlider = setInterval(slideRight, 3000);
			});

		});//DOCUMENT READY

		/***********
		 SLIDE LEFT
		 ************/
		function slideLeft() {
			pos--;
			if (pos == -1) {
				pos = totalSlides - 1;
			}
			$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));

			//*> optional
			countSlides();
			pagination();
		}

		/************
		 SLIDE RIGHT
		 *************/
		function slideRight() {
			pos++;
			if (pos == totalSlides) {
				pos = 0;
			}
			$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));

			//*> optional 
			countSlides();
			pagination();
		}

		/************************
		 //*> OPTIONAL SETTINGS
		 ************************/
		function countSlides() {
			$('#counter').html(pos + 1 + ' / ' + totalSlides);
		}

		function pagination() {
			$('#pagination-wrap ul li').removeClass('active');
			$('#pagination-wrap ul li:eq(' + pos + ')').addClass('active');
		}
	</script>
</body>
</html>