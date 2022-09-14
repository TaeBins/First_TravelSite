<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>JEOLA DOING</title>
<link rel="shortcut icon" href="../favicon.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css2/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="../css2/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="../css2/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="../css2/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="../css2/flaticon.css">
<!-- fontawesome CSS -->
<link rel="stylesheet" href="../fontawesome/css/all.min.css">
<!-- magnific CSS -->
<link rel="stylesheet" href="../css2/magnific-popup.css">
<link rel="stylesheet" href="../css2/gijgo.min.css">
<!-- niceselect CSS -->
<link rel="stylesheet" href="../css2/nice-select.css">
<!-- slick CSS -->
<link rel="stylesheet" href="../css2/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="../css2/style.css">
<link rel="stylesheet" href="../css2/Sub.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto&subset=latin,cyrillic-ext,latin-ext,cyrillic,greek-ext,greek,vietnamese);

@font-face {
	font-family: "demurecontrols";
	src: url("http://cssslider.com/sliders/pen/demurecontrols.eot?cssslidertheme=demure");
	src: url("http://cssslider.com/sliders/pen/demurecontrols.eot#iefix?cssslidertheme=demure") format("embedded-opentype"), url("http://cssslider.com/sliders/pen/demurecontrols.woff?cssslidertheme=demure") format("woff"), url("http://cssslider.com/sliders/pen/demurecontrols.ttf?cssslidertheme=demure") format("truetype"), url("http://cssslider.com/sliders/pen/demurecontrols.svg#demure?cssslidertheme=demure") format("svg");
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
						<nav class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="../Main.jsp">
								<img src="../img2/fivelogo.png" width="180px" height="80px" alt="logo">
							</a>
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="../Main.jsp">Home</a></li>
									<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="../top_place.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Top7 Places </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="../GwangjuPlaces.jsp">Gwangju</a>
											<a class="dropdown-item" href="../JeonjuPlaces.jsp">Jeonju</a>
											<a class="dropdown-item" href="../DamyangPlaces.jsp">Damyang</a>
											<a class="dropdown-item" href="../JindoPlaces.jsp">Jindo</a>
											<a class="dropdown-item" href="../BosungPlaces.jsp">Bosung</a>
											<a class="dropdown-item" href="../YeosuPlaces.jsp">Yeosu</a>
											<a class="dropdown-item" href="../SuncheonPlaces.jsp">Suncheon</a>
										</div></li>
									<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="../packages.jsp" id="navbarDropdown_1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Top7 Taste Food </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
											<a class="dropdown-item" href="../GwangjuRestaurant.jsp">Gwangju</a>
											<a class="dropdown-item" href="../JeonjuRestaurant.jsp">Jeonju</a>
											<a class="dropdown-item" href="../DamyangRestaurant.jsp">Damyang</a>
											<a class="dropdown-item" href="../JindoRestaurant.jsp">Jindo</a>
											<a class="dropdown-item" href="../BosungRestaurant.jsp">Bosung</a>
											<a class="dropdown-item" href="../YeosuRestaurant.jsp">Yeosu</a>
											<a class="dropdown-item" href="../SuncheonRestaurant.jsp">Suncheon</a>
										</div></li>
									<li class="nav-item"><a class="nav-link" href="../Questions.jsp">1:1 Questions</a></li>
									<%
									MemberDTO log = (MemberDTO) session.getAttribute("info");
									if (log == null) {
									%><li class="nav-item"><a class="nav-link" href="../Member.jsp">
											<i class="bi bi-box-arrow-in-right"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
                       <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z" />
                       <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                     </svg> Login</i>
										</a></li>
									<%
									} else {
									%><li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<i class="bi bi-person-circle"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
													<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
													<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" /></svg>User Menu</i>
										</a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a href="../Like.jsp" class="like" style="direction: none;">
												&nbsp;&nbsp;<i class="bi bi-bookmark-heart-fill"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark-heart-fill" viewBox="0 0 16 16">
														<path d="M2 15.5a.5.5 0 0 0 .74.439L8 13.069l5.26 2.87A.5.5 0 0 0 14 15.5V2a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v13.5zM8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z" /></svg>Wish List</i>
											</a>
											<hr class="dropdown-divider">
											<a href="../Upda.jsp" class="update">
												&nbsp;&nbsp;<i class="bi bi-person-lines-fill"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
														<path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" /></svg>User information</i>
											</a>
											<hr class="dropdown-divider">
											<a href="../LogoutCon.do" class="logout">
												&nbsp;&nbsp;<i class="bi bi-box-arrow-right"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
														<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
														<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" /></svg>Logout</i>
											</a>
										</div></li>
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

	<!-- hotel list css start-->
	<section class="top_place sectioneded_padding">
		<div class="container">
			<div>
				<!-- hotel list css start-->
				<div class="row justify-content-center">
					<div class="section_tittle text-center" style="width: 700px;">
						<h2>진남관</h2>
						<!-- hotel list css end -->

						<!-- Start cssSlider.com -->
						<div class='csslider1 autoplay'>
							<input name="cs_anchor1" id='cs_slide1_0' type="radio" class='cs_anchor slide'>
							<input name="cs_anchor1" id='cs_slide1_1' type="radio" class='cs_anchor slide'>
							<input name="cs_anchor1" id='cs_slide1_2' type="radio" class='cs_anchor slide'>
							<input name="cs_anchor1" id='cs_play1' type="radio" class='cs_anchor' checked>
							<input name="cs_anchor1" id='cs_pause1' type="radio" class='cs_anchor'>
							<ul>
								<div style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
									<img src="http://cssslider.com/sliders/pen/images/buns.jpg" style="width: 100%;">
								</div>
								<li class='num0 img'><img src='../img1/Yeosu/진1.jpg' alt='Buns' title='1' /></li>
								<li class='num1 img'><img src='../img1/Yeosu/진2.jpg' alt='Croissant' title='2' /></li>
								<li class='num2 img'><img src='../img1/Yeosu/진3.jpg' alt='Lemon pie' title='3' /></li>
							</ul>
							<div class='cs_arrowprev'>
								<label class='num0' for='cs_slide1_0'></label> <label class='num1' for='cs_slide1_1'></label> <label class='num2' for='cs_slide1_2'></label>
							</div>
							<div class='cs_arrownext'>
								<label class='num0' for='cs_slide1_0'></label> <label class='num1' for='cs_slide1_1'></label> <label class='num2' for='cs_slide1_2'></label>
							</div>
							<div class='cs_bullets'>
								<label class='num0' for='cs_slide1_0'> <span class='cs_point'></span> <span class='cs_thumb'>
										<img src='../img1/Yeosu/진1.jpg' alt='Buns' title='1' />
									</span>
								</label> <label class='num1' for='cs_slide1_1'> <span class='cs_point'></span> <span class='cs_thumb'>
										<img src='../img1/Yeosu/진2.jpg' alt='Croissant' title='2' />
									</span>
								</label> <label class='num2' for='cs_slide1_2'> <span class='cs_point'></span> <span class='cs_thumb'>
										<img src='../img1/Yeosu/진3.jpg' alt='Lemon pie' title='3' />
									</span>
								</label>
							</div>
						</div>
						<div class="dede"></div>
						<!-- End cssSlider.com -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="top_place sectionedet_padding">
		<table class="container">
			<tbody>
				<tr>
					<th class="ththth">주소</th>
					<td class="tdtdtd">전남 여수시 동문로 11</td>
				</tr>
				<tr>
					<th class="ththth">영업시간</th>
					<td class="tdtdtd">이용시간을 알려주세요</td>
				</tr>
				<tr>
					<th class="ththth">전화번호</th>
					<td class="tdtdtd">061-659-5711</td>
				</tr>
				<tr>
					<th class="ththth">휴무</th>
					<td class="tdtdtd">없음</td>
				</tr>
				<tr>
					<th class="ththth">별점</th>
					<td class="tdtdtd">
						<div class="place_review">
							<a href="#">
								<i class="fas fa-star"></i>
							</a>
							<a href="#">
								<i class="fas fa-star"></i>
							</a>
							<a href="#">
								<i class="fas fa-star"></i>
							</a>
							<a href="#">
								<i class="fas fa-star"></i>
							</a>
							<a href="#">
								<i class="fas fa-star"></i>
							</a>
						</div>
					</td>
				</tr>
				<th class="ththth">Wish</th>
				<td class="tdtdtd">
					<form action="WishCon.do" method="post">
						<input type="hidden" name="place_seq" value="<%=48%>">
						<input type="hidden" name="mb_id" value="<%=log.getMb_id()%>">
						<button type="submit" class="btn btn-outline-danger">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart-fill" viewBox="0 0 16 16">
  					<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5ZM8.5 4h6l.5.667V5H1v-.333L1.5 4h6V1h1v3ZM8 7.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z"></path>
					</svg>
							wish
						</button>
					</form>
				</td>
				</tr>
			</tbody>
		</table>
	</section>

	<div class="mapapi">
		<div id="map"></div>
	</div>

	<!-- footer part start-->
	<footer class="footer-area">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-sm-6 col-md-5">
					<div class="single-footer-widget" align="center">
						<h4>Jeola Doing</h4>
						<ul>
							<li><a href="../Gwangjuphoto.jsp">Gwangju</a></li>
							<li><a href="../Jeonjuphoto.jsp">Jeonju</a></li>
							<li><a href="../Damyangphoto.jsp">Damyang</a></li>
							<li><a href="../Jindophoto.jsp">Jindo</a></li>
							<li><a href="../Bosungphoto.jsp">Bosung</a></li>
							<li><a href="../Yeosuphoto.jsp">Yeosu</a></li>
							<li><a href="../Suncheonphoto.jsp">Suncheon</a></li>
						</ul>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="single-footer-widget">
						<h4>Subscribe Newsletter</h4>
						<div class="form-wrap" id="mc_embed_signup">
							<form target="_blank" action="#" method="get" class="form-inline">
								<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required="" type="email">
								<button class="click-btn btn btn-default text-uppercase">
									<i class="far fa-paper-plane"></i>
								</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
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
							<a href="https://smhrd.or.kr" class="mobtn">Smart Talent Development Center, Gwangju, korea</a>
						</p>
						<br>
						<p>+062 224 4560 | 61927</p>
						<span>JEOLA DOING@gmail.com</span>
						<div class="social-icons">
							<a href="#">
								<i class="ti-facebook"></i>
							</a>
							<a href="#">
								<i class="ti-twitter-alt"></i>
							</a>
							<a href="#">
								<i class="ti-pinterest"></i>
							</a>
							<a href="#">
								<i class="ti-instagram"></i>
							</a>
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
							Places & Foods | This page with <i class="ti-heart" aria-hidden="true"></i> by
							<a href="../Main.jsp" target="_blank">JEOLA DOING</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer part end-->

	<!-- jquery plugins here-->
	<script src="../js2/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="../js2/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="../js2/bootstrap.min.js"></script>
	<!-- magnific js -->
	<script src="../js2/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="../js2/owl.carousel.min.js"></script>
	<!-- masonry js -->
	<script src="../js2/masonry.pkgd.js"></script>
	<!-- masonry js -->
	<script src="../js2/jquery.nice-select.min.js"></script>
	<script src="../js2/gijgo.min.js"></script>
	<!-- contact js -->
	<script src="../js2/jquery.ajaxchimp.min.js"></script>
	<script src="../js2/jquery.form.js"></script>
	<script src="../js2/jquery.validate.min.js"></script>
	<script src="../js2/mail-script.js"></script>
	<script src="../js2/contact.js"></script>
	<!-- custom js -->
	<script src="../js2/custom.js"></script>

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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e44ae7e8ec016479f7177c6faef4c9f&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'전남 여수시 동문로 11',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding: 3px 0;">진남관</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>
</html>