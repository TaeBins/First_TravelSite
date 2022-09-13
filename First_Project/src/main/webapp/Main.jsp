<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.book::after,
.book::before, .book img, .book {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}

body,
html {
  width: 100%;
  height: 100%;
  display: table;
  text-align: center;
}

ul {
  display: table-cell;
  vertical-align: middle;
}

.list-inline {
  padding-left: 0;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  margin-left: 2em;
}
.list-inline > li:first-child {
  margin-left: 0;
}

.book {
  cursor: pointer;
  display: block;
  width: 250px;
  height: 380px;
  position: relative;
  background: white;
  z-index: 1;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 9px 20px 0 rgba(0, 0, 0, 0.25);
  overflow: hidden;
  transition: box-shadow 0.3s linear;
}

.book img {
  width: inherit;
  height: inherit;
  transform-origin: 0 50%;
  transform: rotateY(0);
  transition: all 0.45s ease;
}

.book:hover {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.25), 0 9px 20px 0 rgba(0, 0, 0, 0.45);
}
.book:hover img {
  transform: rotateY(-25deg);
  box-shadow: 1px 1px 5px 5px rgba(0, 0, 0, 0.2);
}

.book::after,
.book::before {
  content: "";
  display: block;
  width: inherit;
  height: inherit;
  position: absolute;
  z-index: -1;
  top: 0;
  background: white;
  border: 1px solid #d9d9d9;
}

.book::before {
  left: -3px;
}

.book::after {
  left: -6px;
}
</style>
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
    <link rel="stylesheet" href="css2/Main.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
    
    
  <!-- 
Please note, that you can apply .m--global-blending-active to .fnc-slider 
to enable blend-mode for all background-images or apply .m--blend-bg-active
to some specific slides (.fnc-slide). It's disabled by default in this demo,
because it requires specific images, where more than 50% of bg is transparent or monotone
-->
<div class="demo-cont">
  <!-- slider start -->
  <div class="fnc-slider example-slider">
    <div class="fnc-slider__slides">
      <!-- slide start -->
      <div class="fnc-slide m--blend-green m--active-slide">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span style="height: 55px;">Jeonju</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span></span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-dark">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span style="height: 55px;">Yeosu</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span></span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-red">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span style="height: 55px;">Damyang</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span></span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-blue">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span style="height: 55px;">Gwangju</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span></span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
    </div>
    <nav class="fnc-nav">
      <div class="fnc-nav__bgs">
        <div class="fnc-nav__bg m--navbg-green m--active-nav-bg"></div>
        <div class="fnc-nav__bg m--navbg-dark"></div>
        <div class="fnc-nav__bg m--navbg-red"></div>
        <div class="fnc-nav__bg m--navbg-blue"></div>
      </div>
      <div class="fnc-nav__controls">
        <button class="fnc-nav__control">
          Jeonju
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Yeosu
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Damyang
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Gwangju
          <span class="fnc-nav__control-progress"></span>
        </button>
      </div>
    </nav>
  </div>
  <!-- slider end -->
  <div class="demo-cont__credits">
    <div class="demo-cont__credits-close"></div>
    <h2 class="demo-cont__credits-heading">Made by</h2>
    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg" alt="" class="demo-cont__credits-img" />
    <h3 class="demo-cont__credits-name">강선구</h3>
    <h3 class="demo-cont__credits-name">이신행</h3>
    <h3 class="demo-cont__credits-name">김태빈</h3>
    <h2 class="demo-cont__credits-heading">Based on</h2>
    <a href="https://smhrd.or.kr/" target="_blank" class="demo-cont__credits-link">스마트인재개발원</a>
    <div class="colorful-switch">
      <input type="checkbox" class="colorful-switch__checkbox js-activate-global-blending" id="colorful-switch-cb" />
      <label class="colorful-switch__label" for="colorful-switch-cb">
        <span class="colorful-switch__bg"></span>
        <span class="colorful-switch__dot"></span>
        <span class="colorful-switch__on">
          <span class="colorful-switch__on__inner"></span>
        </span>
        <span class="colorful-switch__off"></span>
      </label>
    </div>
  </div>
</div>
    
    
    <!--top place start-->
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Festival DOING</h2>
                        <p>South Jeolla Festival in Progress</p>
                    </div>
                </div>
            </div>
            <div class="row">
    <li class='book'>
    <img src='img2/common.jfif' />
  </li>
  <li class='book'>
    <img src='img2/common2.jfif' />
  </li> 
  <li class='book'>
    <img src='img2/common3.jfif' />
  </li>
   <li class='book'>
    <img src='img2/common4.jfif' />
  </li>
  </section>
   <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Popular Attraction</h2>
                        <p>Popular places these days</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <a href="place/Smart.jsp"><img src="img2/places/Smart Talent Development Center1.png" width="555px" height="396px"></a>
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <h3>Smart Talent Development Center</h3>
                         
                            </div>
                            <form action="wishCon.do">
                            	<button type="button" class="btn btn-outline-danger">
               							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
                							wish
              					</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <a href="place/D-Ocean.jsp"><img src="img2/places/D-Ocean Water Park.jpg" width="555px" height="396px"></a>
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <h3>D-Ocean Water Park</h3>
                            
                            </div>
                            <form action="wishCon.do">
                            	<button type="button" class="btn btn-outline-danger">
               							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
                							wish
              					</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <a href="place/Sol.jsp"><img src="img2/places/soso1.jpg" width="555px" height="396px"></a>
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <h3>Sol Beach</h3>
                           
                            </div>
                            <form action="wishCon.do">
                            	<button type="button" class="btn btn-outline-danger">
               							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
                							wish
              					</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <a href="place/Jeondong.jsp"><img src="img2/places/han9.jpg" width="555px" height="396px"></a>
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <h3>Jeondong Cathedral</h3>
                             
                            </div>
                            <form action="wishCon.do">
                            	<button type="button" class="btn btn-outline-danger">
               							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
                							wish
              					</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!--::industries start::-->
    <section class="hotel_list section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Popular Restaurant</h2>
                        <p>Popular restaurants these days</p>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="col-lg-4 col-sm-6">
					<div class="single_ihotel_list">
						<div class="container">
							<div class="thumbex">
								<div class="thumbnail">
									<a href="rest/1st.jsp">
										<img src="img1/rest/y3-4.jpg">
									</a>
								</div>
							</div>
						</div>
						<div class="hotel_text_iner">
							<h3>
								<a href="rest/1st.jsp">Kkotdolgejang 1st Avenue</a>
							</h3>
							<form action="wishCon.do">
								<button type="button" class="btn btn-outline-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
									wish
								</button>
							</form>
						</div>
					</div>
				</div>
                <div class="col-lg-4 col-sm-6">
					<div class="single_ihotel_list">
						<div class="container">
							<div class="thumbex">
								<div class="thumbnail">
									<a href="rest/Mid.jsp">
										<img src="img1/rest/k7-2.jpg">
									</a>
								</div>
							</div>
						</div>
						<div class="hotel_text_iner">
							<h3>
								<a href="rest/Mid.jsp">Mid Pick</a>
							</h3>
							<form action="wishCon.do">
								<button type="button" class="btn btn-outline-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
									wish
								</button>
							</form>
						</div>
					</div>
				</div>
                <div class="col-lg-4 col-sm-6">
					<div class="single_ihotel_list">
						<div class="container">
							<div class="thumbex">
								<div class="thumbnail">
									<a href="rest/Mug.jsp">
										<img src="img1/rest/g6-2.jpg">
									</a>
								</div>
							</div>
						</div>

						<div class="hotel_text_iner">
							<h3>
								<a href="rest/Mug.jsp">Mug-Eunji</a>
							</h3>
							<form action="wishCon.do">
								<button type="button" class="btn btn-outline-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box2-heart" viewBox="0 0 16 16">
  											<path d="M8 7.982C9.664 6.309 13.825 9.236 8 13 2.175 9.236 6.336 6.31 8 7.982Z"></path>
  											<path d="M3.75 0a1 1 0 0 0-.8.4L.1 4.2a.5.5 0 0 0-.1.3V15a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4.5a.5.5 0 0 0-.1-.3L13.05.4a1 1 0 0 0-.8-.4h-8.5Zm0 1H7.5v3h-6l2.25-3ZM8.5 4V1h3.75l2.25 3h-6ZM15 5v10H1V5h14Z"></path>
										</svg>
									wish
								</button>
							</form>
						</div>
					</div>
				</div>
            </div>
        </div>
    </section>
    <!--::industries end::-->

    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-5">
                    <div class="single-footer-widget"  align="center">
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
                            <form target="_blank"
                                action="#"
                                method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Your Email Address"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                    required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                        type="text">
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
                        <p><a href="https://smhrd.or.kr" class="mobtn">Smart Talent Development Center, Gwangju, korea</a></p><br>
                        <p>+062 224 4560 | 61927</p>
                        <span>JEOLA DOING@gmail.com</span>
                        <div class="social-icons">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
BSH &copy;<script>document.write(new Date().getFullYear());</script> Places & Foods | This page with <i class="ti-heart" aria-hidden="true"></i> by <a href="Main.jsp" target="_blank">JEOLA DOING</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
    (function() {

    	  var $$ = function(selector, context) {
    	    var context = context || document;
    	    var elements = context.querySelectorAll(selector);
    	    return [].slice.call(elements);
    	  };

    	  function _fncSliderInit($slider, options) {
    	    var prefix = ".fnc-";

    	    var $slider = $slider;
    	    var $slidesCont = $slider.querySelector(prefix + "slider__slides");
    	    var $slides = $$(prefix + "slide", $slider);
    	    var $controls = $$(prefix + "nav__control", $slider);
    	    var $controlsBgs = $$(prefix + "nav__bg", $slider);
    	    var $progressAS = $$(prefix + "nav__control-progress", $slider);

    	    var numOfSlides = $slides.length;
    	    var curSlide = 1;
    	    var sliding = false;
    	    var slidingAT = +parseFloat(getComputedStyle($slidesCont)["transition-duration"]) * 1000;
    	    var slidingDelay = +parseFloat(getComputedStyle($slidesCont)["transition-delay"]) * 1000;

    	    var autoSlidingActive = false;
    	    var autoSlidingTO;
    	    var autoSlidingDelay = 5000; // default autosliding delay value
    	    var autoSlidingBlocked = false;

    	    var $activeSlide;
    	    var $activeControlsBg;
    	    var $prevControl;

    	    function setIDs() {
    	      $slides.forEach(function($slide, index) {
    	        $slide.classList.add("fnc-slide-" + (index + 1));
    	      });

    	      $controls.forEach(function($control, index) {
    	        $control.setAttribute("data-slide", index + 1);
    	        $control.classList.add("fnc-nav__control-" + (index + 1));
    	      });

    	      $controlsBgs.forEach(function($bg, index) {
    	        $bg.classList.add("fnc-nav__bg-" + (index + 1));
    	      });
    	    };

    	    setIDs();

    	    function afterSlidingHandler() {
    	      $slider.querySelector(".m--previous-slide").classList.remove("m--active-slide", "m--previous-slide");
    	      $slider.querySelector(".m--previous-nav-bg").classList.remove("m--active-nav-bg", "m--previous-nav-bg");

    	      $activeSlide.classList.remove("m--before-sliding");
    	      $activeControlsBg.classList.remove("m--nav-bg-before");
    	      $prevControl.classList.remove("m--prev-control");
    	      $prevControl.classList.add("m--reset-progress");
    	      var triggerLayout = $prevControl.offsetTop;
    	      $prevControl.classList.remove("m--reset-progress");

    	      sliding = false;
    	      var layoutTrigger = $slider.offsetTop;

    	      if (autoSlidingActive && !autoSlidingBlocked) {
    	        setAutoslidingTO();
    	      }
    	    };

    	    function performSliding(slideID) {
    	      if (sliding) return;
    	      sliding = true;
    	      window.clearTimeout(autoSlidingTO);
    	      curSlide = slideID;

    	      $prevControl = $slider.querySelector(".m--active-control");
    	      $prevControl.classList.remove("m--active-control");
    	      $prevControl.classList.add("m--prev-control");
    	      $slider.querySelector(prefix + "nav__control-" + slideID).classList.add("m--active-control");

    	      $activeSlide = $slider.querySelector(prefix + "slide-" + slideID);
    	      $activeControlsBg = $slider.querySelector(prefix + "nav__bg-" + slideID);

    	      $slider.querySelector(".m--active-slide").classList.add("m--previous-slide");
    	      $slider.querySelector(".m--active-nav-bg").classList.add("m--previous-nav-bg");

    	      $activeSlide.classList.add("m--before-sliding");
    	      $activeControlsBg.classList.add("m--nav-bg-before");

    	      var layoutTrigger = $activeSlide.offsetTop;

    	      $activeSlide.classList.add("m--active-slide");
    	      $activeControlsBg.classList.add("m--active-nav-bg");

    	      setTimeout(afterSlidingHandler, slidingAT + slidingDelay);
    	    };



    	    function controlClickHandler() {
    	      if (sliding) return;
    	      if (this.classList.contains("m--active-control")) return;
    	      if (options.blockASafterClick) {
    	        autoSlidingBlocked = true;
    	        $slider.classList.add("m--autosliding-blocked");
    	      }

    	      var slideID = +this.getAttribute("data-slide");

    	      performSliding(slideID);
    	    };

    	    $controls.forEach(function($control) {
    	      $control.addEventListener("click", controlClickHandler);
    	    });

    	    function setAutoslidingTO() {
    	      window.clearTimeout(autoSlidingTO);
    	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
    	      curSlide++;
    	      if (curSlide > numOfSlides) curSlide = 1;

    	      autoSlidingTO = setTimeout(function() {
    	        performSliding(curSlide);
    	      }, delay);
    	    };

    	    if (options.autoSliding || +options.autoSlidingDelay > 0) {
    	      if (options.autoSliding === false) return;
    	      
    	      autoSlidingActive = true;
    	      setAutoslidingTO();
    	      
    	      $slider.classList.add("m--with-autosliding");
    	      var triggerLayout = $slider.offsetTop;
    	      
    	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
    	      delay += slidingDelay + slidingAT;
    	      
    	      $progressAS.forEach(function($progress) {
    	        $progress.style.transition = "transform " + (delay / 1000) + "s";
    	      });
    	    }
    	    
    	    $slider.querySelector(".fnc-nav__control:first-child").classList.add("m--active-control");

    	  };

    	  var fncSlider = function(sliderSelector, options) {
    	    var $sliders = $$(sliderSelector);

    	    $sliders.forEach(function($slider) {
    	      _fncSliderInit($slider, options);
    	    });
    	  };

    	  window.fncSlider = fncSlider;
    	}());

    	/* not part of the slider scripts */

    	/* Slider initialization
    	options:
    	autoSliding - boolean
    	autoSlidingDelay - delay in ms. If audoSliding is on and no value provided, default value is 5000
    	blockASafterClick - boolean. If user clicked any sliding control, autosliding won't start again
    	*/
    	fncSlider(".example-slider", {autoSlidingDelay: 4000});

    	var $demoCont = document.querySelector(".demo-cont");

    	[].slice.call(document.querySelectorAll(".fnc-slide__action-btn")).forEach(function($btn) {
    	  $btn.addEventListener("click", function() {
    	    $demoCont.classList.toggle("credits-active");
    	  });
    	});

    	document.querySelector(".demo-cont__credits-close").addEventListener("click", function() {
    	  $demoCont.classList.remove("credits-active");
    	});

    	document.querySelector(".js-activate-global-blending").addEventListener("click", function() {
    	  document.querySelector(".example-slider").classList.toggle("m--global-blending-active");
    	});</script>
 
</body>
</html>