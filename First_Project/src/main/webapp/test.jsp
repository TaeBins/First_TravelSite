<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<style type="text/css">
/*GLOBALS*/
*{margin:0; padding:0; list-style:none;}
a{text-decoration:none; color:#666;}
a:hover{color:#1bc1a3;}
body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}



#wrapper{
  width:555px;
  margin:50px auto;
  height:400px;
  position:relative;
  color:#fff;
  text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;  
}

#slider-wrap{
  width:555px;
  height:400px;
  position:relative;
  overflow:hidden;
}

#slider-wrap ul#slider{
  width:100%;
  height:100%;
  
  position:absolute;
  top:0;
  left:0;   
}

#slider-wrap ul#slider li{
  float:left;
  position:relative;
  width:555px;
  height:400px; 
}

#slider-wrap ul#slider li > div{
  position:absolute;
  top:20px;
  left:35px;  
}

#slider-wrap ul#slider li > div h3{
  font-size:36px;
  text-transform:uppercase; 
}

#slider-wrap ul#slider li > div span{
  font-family: Neucha, Arial, sans serif;
  font-size:21px;
}

#slider-wrap ul#slider li img{
  display:block;
  width:100%;
  height: 100%;
}


/*btns*/
.btns{
  position:absolute;
  width:50px;
  height:60px;
  top:50%;
  margin-top:-25px;
  line-height:57px;
  text-align:center;
  cursor:pointer; 
  background:rgba(0,0,0,0.1);
  z-index:100;
  
  
  -webkit-user-select: none;  
  -moz-user-select: none; 
  -khtml-user-select: none; 
  -ms-user-select: none;
  
  -webkit-transition: all 0.1s ease;
  -moz-transition: all 0.1s ease;
  -o-transition: all 0.1s ease;
  -ms-transition: all 0.1s ease;
  transition: all 0.1s ease;
}

.btns:hover{
  background:rgba(0,0,0,0.3); 
}

#next{right:-50px; border-radius:7px 0px 0px 7px;}
#previous{left:-50px; border-radius:0px 7px 7px 7px;}
#counter{
  top: 30px; 
  right:35px; 
  width:auto;
  position:absolute;
}

#slider-wrap.active #next{right:0px;}
#slider-wrap.active #previous{left:0px;}


/*bar*/
#pagination-wrap{
  min-width:20px;
  margin-top:350px;
  margin-left: auto; 
  margin-right: auto;
  height:15px;
  position:relative;
  text-align:center;
}

#pagination-wrap ul {
  width:100%;
}

#pagination-wrap ul li{
  margin: 0 4px;
  display: inline-block;
  width:5px;
  height:5px;
  border-radius:50%;
  background:#fff;
  opacity:0.5;
  position:relative;
  top:0;
  
  
}

#pagination-wrap ul li.active{
  width:12px;
  height:12px;
  top:3px;
  opacity:1;
  box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
}




/*Header*/
h1, h2{text-shadow:none; text-align:center;}
h1{ color: #666; text-transform:uppercase;  font-size:36px;}
h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 




/*ANIMATION*/
#slider-wrap ul, #pagination-wrap ul li{
  -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  transition: all 0.3s cubic-bezier(1,.01,.32,1); 
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
    <link rel="stylesheet" href="css2/test.css">
</head>

<body>

                 
      </div>
  
   </div>


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
                                    <li class="nav-item">
                                        <a class="nav-link" href="Questions.jsp">1:1 Questions</a>
                                    </li>
                            <% MemberDTO log = (MemberDTO)session.getAttribute("info");
                            if (log == null) {%><li  class="nav-item">
                            <a class="nav-link" href="Login.jsp"><i class="bi bi-box-arrow-in-right"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
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
						<h2>신호등 회관</h2>
						<p>Waters make fish every without firmament saw had. Morning
							air subdue. Our. Air very one. Whales grass is fish whales
							winged.</p>
				</div>
			</div>

    <!-- hotel list css end -->
    
 
<div class="rows"  style="width: 1100px;">
            <div class="sinhang">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>

<div id="wrapper">
      <div id="slider-wrap">
          <ul id="slider">
             <li>
                <div>
                    <h3></h3>
                    <span></span>
                </div>                
<img src="img2/g1-2.jpg">
             </li>
             
             <li>
                <div>
                    <h3></h3>
                    <span></span>
                </div>
<img src="img2/g1-3.jpg">
             </li>
             
             <li>
                <div>
                    <h3></h3>
                    <span></span>
                </div>
<img src="img2/g1-4.jpg">
             </li>
             
             <li>
                <div>
                    <h3></h3>
                    <span></span>
                </div>
<img src="img2/g1-6.jpg">
             </li>
             
             <li>
                <div>
                    <h3></h3>
                    <span></span>
                </div>
<img src="img2/g1-7.jpg">
             </li>
             
             
          </ul>
          
           <!--controls-->
           
          
           
           
           
          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
          <div id="counter"></div>
          
          <div id="pagination-wrap">
            <ul>
            </ul>
            
          </div>
          <!--controls-->  
          
      
                    </div>
                      
                    </div>
                </div>
                <div class="sinhangs">
               <h1 >
               신호등회관               
               </h1>
                <p>
                전남 진도군 진도읍 남동1길 66

                
                </p>
                  <p>
              10:00 - 21:00
                </p>
                  <p>
                15:00 - 17:00 브레이크타임
                
                </p>
                  <p>
                20:30 라스트오더
                
                </p>
                  <p>
                화 휴무
                
                </p>
                </div>
                
                
               </div>
            </div>
            
        </div>



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
  //current position
    var pos = 0;
    //number of slides
    var totalSlides = $('#slider-wrap ul li').length;
    //get the slide width
    var sliderWidth = $('#slider-wrap').width();


    $(document).ready(function(){
      
      
      /*****************
       BUILD THE SLIDER
      *****************/
      //set width to be 'x' times the number of slides
      $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
      
        //next slide  
      $('#next').click(function(){
        slideRight();
      });
      
      //previous slide
      $('#previous').click(function(){
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
      $('#slider-wrap').hover(
        function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
        function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
      );
      
      

    });//DOCUMENT READY
      


    /***********
     SLIDE LEFT
    ************/
    function slideLeft(){
      pos--;
      if(pos==-1){ pos = totalSlides-1; }
      $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
      
      //*> optional
      countSlides();
      pagination();
    }


    /************
     SLIDE RIGHT
    *************/
    function slideRight(){
      pos++;
      if(pos==totalSlides){ pos = 0; }
      $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
      
      //*> optional 
      countSlides();
      pagination();
    }



      
    /************************
     //*> OPTIONAL SETTINGS
    ************************/
    function countSlides(){
      $('#counter').html(pos+1 + ' / ' + totalSlides);
    }

    function pagination(){
      $('#pagination-wrap ul li').removeClass('active');
      $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
    }
        
    </script>
</body>
</html>