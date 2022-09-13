<%@page import="java.util.List"%>
<%@page import="com.bsh.model.MessageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bsh.model.MessageDAO"%>
<%@page import="com.bsh.model.MemberDAO"%>
<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<!-- style CSS -->
<link rel="stylesheet" href="css2/Message.css">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="main_menu_iner">
			<div class="container">
				<div class="row align-items-center ">
					<div class="col-lg-12">
						<nav class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="Main.jsp">
								<img src="img2/fivelogo.png" width="180px" height="80px" alt="logo">
							</a>
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="Main.jsp">Home</a></li>
									<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="top_place.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Top7 Places </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="GwangjuPlaces.jsp">Gwangju</a>
											<a class="dropdown-item" href="JeonjuPlaces.jsp">Jeonju</a>
											<a class="dropdown-item" href="DamyangPlaces.jsp">Damyang</a>
											<a class="dropdown-item" href="JindoPlaces.jsp">Jindo</a>
											<a class="dropdown-item" href="BosungPlaces.jsp">Bosung</a>
											<a class="dropdown-item" href="YeosuPlaces.jsp">Yeosu</a>
											<a class="dropdown-item" href="SuncheonPlaces.jsp">Suncheon</a>
										</div></li>
									<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="packages.jsp" id="navbarDropdown_1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Top7 Taste Food </a>
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

	<!-- breadcrumb start-->

	<!-- breadcrumb start-->

	<!-- ================ contact section start ================= -->
	<%
	ArrayList<MessageDTO> msg_list = new ArrayList<MessageDTO>();
	if (log.getMb_id().equals("admin")) {
		msg_list = new MessageDAO().showMessage();
	%>
	<div class="container-taebins">
		<div class="container-TB">
			<svg class="qna_set" viewBox="0 0 960 300">
    <symbol id="s-text">
      <text text-anchor="middle" x="50%" y="80%">QnA List</text>
    </symbol>

    <g class="g-ants">
      <use xlink:href="#s-text" class="text-copy"></use>
      <use xlink:href="#s-text" class="text-copy"></use>
      <use xlink:href="#s-text" class="text-copy"></use>
    </g>
  </svg>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<td width="100px">No</td>
						<td>Title</td>
						<td>UserID</td>
						<td>Date</td>
						<td>Delete</td>
					</tr>
				</thead>
				<tbody>
					<%
					for (int i = 0; i < msg_list.size(); i++) {
					%>
					<tr>
						<td width="100px"><%=i + 1%></td>
						<td>
							<a style="color: #212529;" href="ShowMessage.jsp?seq=<%=msg_list.get(i).getQ_seq()%>"><%=msg_list.get(i).getQ_title()%></a>
						</td>
						<td><%=msg_list.get(i).getMb_id()%></td>
						<td><%=msg_list.get(i).getQ_date()%></td>
						<td class="tasize">
							<form action="DeleteOneCon.do" method="post">
								<input type="hidden" name="q_seq" value="<%=msg_list.get(i).getQ_seq()%>">
								<input class="tb-btn" type="submit" value="DEL">
							</form>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<form action="DeleteCon.do" method="post">
				<input class="clear-btn" type="submit" value="Clear">
			</form>
		</div>
	</div>
	<%
	} else {
	%>
	<section class="breadcrumb breadcrumb_bg3">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>1:1 Questions</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-12" align="center">
					<h2 class="contact-title">문의하기</h2>
				</div>
				<br>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="MessageCon.do" method="post" novalidate="novalidate">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="q_title" type="text" placeholder='제목'>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">

									<textarea class="form-control w-100" name="q_content" cols="30" rows="9" placeholder='내용'></textarea>
								</div>
							</div>
							<div class="col-12" align="left">
								<div class="form-group">
									<input class="form-control" name="q_file" type="file">
								</div>
							</div>
						</div>
						<div>
							<input type="hidden" name="mb_id" value="<%=log.getMb_id()%>">
						</div>
						<div class="form-group mt-3" align="center">
							<button type="submit" class="button button-contactForm btn_1">Send Message</button>
						</div>
					</form>
				</div>
				<div class="col-lg-4" style="margin-top: 7%">
					<div class="media contact-info">
						<span class="contact-info__icon">
							<i class="ti-home"></i>
						</span>
						<div class="media-body">
							<h3>Hyundai Vocational College</h3>
							<p>Gwangju, Seogu 61927</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon">
							<i class="ti-tablet"></i>
						</span>
						<div class="media-body">
							<h3>010 - 9615 - 1170</h3>
							<p>Mon to Fri 9am to 6pm</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon">
							<i class="ti-email"></i>
						</span>
						<div class="media-body">
							<h3>JEOLA DOING@gmail.com</h3>
							<p>Send us your query anytime!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
	}
	%>
	<!-- ================ contact section end ================= -->

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
							<a href="https://smhrd.or.kr">Smart Talent Development Center, Gwangju, korea</a>
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
							<a href="Main.jsp" target="_blank">JEOLA DOING</a>
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
</body>
</html>