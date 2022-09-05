<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<link rel="stylesheet" href="css2/Join.css">
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
										class="nav-link dropdown-toggle" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> Top7 Places </a>
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
										</div>
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
						  	<path fill-rule="evenodd"
														d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z" />
						  	<path fill-rule="evenodd"
														d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
							</svg> Login</i></a></li>
									<%
									} else {
									%><li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> <i class="bi bi-person-circle"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
													<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
													<path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" /></svg>User
												Menu</i>
									</a>
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
											<a href="Update.jsp" class="update">&nbsp;&nbsp;<i
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
	<div class="Join-form">
		<div class="join-logo" align="center">
			<img src="img2/fivelogo2.png" width="300px">
		</div>
		<br>
		<div align="center">
			<form action="JoinCon.do" method="post">
				<h5>아이디</h5>
				<input type="text" name="mb_id" class="join-fielded"
					placeholder="아이디">
				<button id="btn" class="idcheckbott" type="button">중복확인</button>
				<p id="idCheck"></p>
				<h5>비밀번호</h5>
				<input type="password" name="mb_pw" class="join-field"
					placeholder="비밀번호">
				<h5>닉네임</h5>
				<input type="text" name="mb_nick" class="join-field"
					placeholder="닉네임">
				<h5>핸드폰 번호</h5>
				<input type="text" minlength="11" maxlength="11" name="mb_phone"
					class="join-field" placeholder="- 제외 번호 11자리">
				<h5>생년월일</h5>
				<input type="text" minlength="6" maxlength="6" name="mb_birthdate"
					class="join-field" placeholder="YYMMDD">
				<h5>아이디 찾기 힌트</h5>
				<input type="text" name="mb_hint" class="join-field"
					placeholder="보물 제1호는?"> <br> <br> <input
					type="submit" class="joinsubmit-btn" value="회원가입">
			</form>
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
							<a href="https://smhrd.or.kr">Smart Talent Development
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

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
	<!-- 아이디 중복체크 ajax -->
	<script type="text/javascript">
		// 아이디 중복체크 버튼을 눌렀을 때!
		$('#btn').on('click', function() {
			// 사용자가 입력한 email 가져오기
			// input태그인데 name=email인 요소의 값을 가져올 것.
			// 2개(로그인, 회원가입)이기 때문에 인덱스 번호 사용해서 회원가입에 있는 요소의 값을 가져올 것.
			var mb_id = $('input[name=mb_id]').eq('0').val();
			console.log(mb_id);

			// ajax사용해서 비동기통신으로 아이디가 있는지 없는지 체크 후 결과값 받아오기
			$.ajax({
				/* url : 어디와 통신을 할 것인지? action에 작성하는 값과 비슷 */
				url : "IdCheckCon.do",
				/* data : url작성한 곳에 데이터를 보낼 때 */
				data : {
					"mb_id" : mb_id
				},
				/* dataType : 결과값을 어떤 타입으로 받아올 것인지(json, text..) */
				dataType : "text",
				/* success : 통신 성공시 */
				success : function(result) {
					if (result == 'true') {
						$('#idCheck').html("아이디가 중복됩니다!");
					} else {
						$('#idCheck').html("생성 가능한 아이디입니다!");
					}
				},
				/* error : 통신 실패 시 */
				error : function(e) {
					alert("실패");
					console.log(e)
				}

			})

		});
	</script>

</body>
</html>