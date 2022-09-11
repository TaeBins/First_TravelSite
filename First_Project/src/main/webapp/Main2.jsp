<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	font-family: 'Fauna One', serif;
	font-size: 20px;
}

li {
	list-style: none;
}

a {
	color: white;
}

a:hover, a:focus {
	color: white;
	text-decoration: none;
}


h1 {
	color: white;
	text-align: center;
	margin-top: 4%;
	font-size: 412.5%;
}


h1 > small {
	display: block;
	color: white;
}

h2 {
	font-size: 245%;
	margin-top: 140px;
}

h2:after {
	display: block;
	margin: 42px 0;
	content: "";
}

h3 {
	font-weight: bold;
}

h4 {
	font-size: 92%;
}

h6 {
	color: #F0F0F0;
}


h1 .logo {
	font-size: 230%;
	font-family: 'Brush Script MT', cursive;
	width: 200px;
	margin-left: -20px;
}

/* ELEMENTS */
.noir {
	display: block;
	background-color: black;
	padding: 18px;
	border: 3px solid white;
}

.vertical-list li {
	float: left;
}

.blue-border {
	border: 2px solid #114190;
}

.magenta-border {
	border: 2px solid #e11a61;
}

.purple-border {
	border: 2px solid #9d1098;
}

.red-border {
	border: 2px solid #9d102b;
}

/* END OF ELEMENTS */

.overflow {
	overflow: hidden;
}

.overlay {
	background-color: rgba(4,14,22,.83);
	height: 100%;
	width: 100%;
	padding-bottom: 80px;
}

#home {
	background: url("https://static.pexels.com/photos/232/apple-iphone-books-desk-large.jpg") no-repeat;
	width: 100%;
	background-size: cover;
}

#home nav {
	margin: 0 auto;
	width: 700px;
	padding-top: 80px;
}

#home nav ul {
	overflow: hidden;
}

#home nav ul li {
	width: 25%;
}

#home nav a {
	padding: 16px;
	padding-right: 30px;
	display: table-cell;
}

#home nav.fixed {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: black;
	z-index: 999;
	padding: 0;
	transition: background-color .8s;
	
}

#home nav.fixed ul {
    max-width: 700px;
	margin: 0 auto;
}


#about::before {
	height: 0px;
	width: 0px;
	border-left: 30px solid transparent;
	border-right: 30px solid transparent;
	border-top: 30px solid #131c23;
	margin: 0 auto;
	content: "";
	display: block;
}

.social-links {
	margin-top: 100px;
	overflow: hidden;
	padding: 0;
	display: table;
	margin: 0 auto;
	margin-top: 90px;
}

.social-links li {
	display: inline-table;
	margin-right: 10px;
}

.twitter {
	border-color: #55acee;
}

.linkedin {
	border-color: #0077b5;
}

.freecodecamp {
	border-color: #4a2b0f;
}

.twitter:hover {
	background-color: #55acee;
	transition: background-color .4s;
}

.linkedin:hover {
	background-color: #0077b5;
	transition: background-color .4s;
}

.freecodecamp:hover {
	background-color: #4a2b0f;
	transition: background-color .4s;
}


#about .info {
	display: flex;
	flex-direction: row;
}

#about h2 {
	color: #0d2435;
}

#about h2::after {
	border-bottom: 2px dashed #918D8D;
}

#about .info p {
	line-height: 270%;
}

#about .signature {
	font-family: 'Brush Script MT', cursive;
	font-size: 150%;
	float: right;
	color: #0d2435;
	opacity: .9;
}

#skill-set {
	margin-top: 80px;
	padding-bottom: 80px;
}

#skill-set ul {
	overflow: hidden;
}

#web-development-skills {
	background-color: #114190;
}


#automation-skills {
	background-color: #e11a61;
}

#misc-skills {
	background-color: #9d1098;
}

.skills {
	color: white;
}

.skills li {
	padding: 20px;
}

#portfolio {
	background-color: #423a3a;
	padding-bottom: 80px;
}

#portfolio h2 {
	color: #F0F0F0;
	margin-bottom: 140px;
}

#portfolio h2:after {
	border-bottom: 2px dashed #b4b4b4;
}

#portfolio .row {
	margin: 0px;
	box-sizing: border-box;
	padding: 0 60px;
}

#portfolio .heading {
	color: #F0F0F0;
	padding: 15px;
	text-align: center;
	position: absolute;
  font-size: 18px;
  letter-spacing: 2px;
}

#portfolio .heading span {
	color: #635757;
	display: block;
	margin: 40px 0px;
	font-size: 200%;
}

#portfolio .description {
	position: absolute;
	top: 0px;
	left: 0px;
	padding: 15px;
}

#portfolio .description > * {
	display: none;
	font-size: 72%;
}

#portfolio p {
	color: #F0F0F0;
	/*display: none;*/
	margin-bottom: 30px;
	line-height: 230%;
}

#portfolio p, .tools {
	width: 100%;
}

.description span {
	margin-left: 10px;
}

.description .tools {
	margin-top: 20px;
	overflow: hidden;
}

.description .tools li {
	margin-top: 5px;
	background-color: #114190;
	margin-right: 10px;
	padding: 10px;
	color: #F0F0F0;
}

#portfolio div section {
	cursor: pointer;
}

#portfolio div:nth-child(odd) section {
	background-color: #483F3F;
	padding: 10px;
	border: 3px solid #4D4343;
}

#portfolio div:nth-child(even) section {
	background-color: #3D3636;
	padding: 10px;
	border: 3px solid #393333;
}

#portfolio img {
	width: 100%;
}

#portfolio section {
	height: 100%;
	margin-bottom: 20px;
}

#portfolio .overlay {
	position: relative;
	padding-bottom: 0px;
	min-height: 550px;
  overflow: auto;
}

#portfolio .description h4 {
	color: white;
}

#portfolio .heading {
	position: relative;
	margin: 0 auto;
}

#portfolio section {
	width: 50%;
	float: left;
}

#portfolio section:hover .overlay img {
	opacity: 0;
	transition: opacity .32s;
}

#portfolio section:hover .description {
	top: 140px;
	transition: top .5s;
}

#portfolio section:hover .overlay .heading span {
	 -webkit-transform: rotate(180deg);
	 position: relative;
	 top: -80px;
	 left: -30px;
	 color: rgba(4,14,22,.83);;
}


#portfolio section:hover .overlay .description > * {
	display: block;
}

#portfolio section:hover .overlay .heading {
	position: absolute;
	top: -60px;
	transition: top .9s;
}


#contact {
	background: url("https://res.cloudinary.com/dj7k0lade/image/upload/v1526689027/codepen/portfolio/map.jpg") no-repeat;
	background-size: cover;
}

#contact .overlay {
	background: rgba(0,0,0,.968);
}

#contact h2 {
	color: white;
}

#contact h2:after {
	border-bottom: 2px dashed white;
}

#contact form {
	position: relative;
}

#contact .form-group label {
	display: block;
	color: white;
	font-weight: normal;
}

#contact .form-group input, #contact .form-group textarea {
	outline: none;
	border: 0;
	border-bottom: 6px solid #114190;
	padding: 9px;
	background-color: #2b2b2b;
	color: white;
}

#contact .form-group input#emailTXT {
	width: 75%;
	border-bottom: 6px solid #e11a61;
}

#contact .form-group input#emailTXT {
	border-bottom: 6px solid #e11a61;
}

#contact .form-group input#subjectTXT {
	width: 55%;
	border-bottom: 6px solid #9d1098;
}

#contact .form-group input#messageTXT {
	border-bottom: 6px solid #9d1098;
}

#contact .form-group #messageTXT {
	border-bottom: 6px solid #9d102b;
	resize: none;
}

#contact #submitBTN {
	color: white;
}

#contact #submitBTN:hover {
	background-color: white;
	color: black;
	transition: background-color .4s;
}

#contact #submitBTN span {
	margin-right: 20px;
}


#contact .social-links li {
	margin-bottom: 20px;
}

/* Media Queries */

@media screen and (max-width: 1200px) {
	#portfolio [class^="col"] section {
		width: 80%;
		margin-right: auto;
		margin-left: auto;
		margin-bottom: 10px;
		min-height: 400px;
	}

	#portfolio .overlay {
		width: 100%;
		height: auto;
	}

	#portfolio img {
		width: 100%;
		height: auto;
	}

	#portfolio section:hover .overlay .heading span {
	 -webkit-transform: rotate(90deg);
	 top: 70px;
	 left: -240px;
	 position: relative;
	}
}

@media screen and (max-width: 790px) {
	body {
		font-size: 18px;
		text-align: center;
	}
  
  h2 {
    margin-top: 80px;
  }

	input {
		text-align: center;
	}

	#about img {
		display: block;
		margin: 0 auto;
		width: 30%;
	}
	
	#about .info {
		flex-direction: column-reverse;
	}

	#skill-set .skills {
		margin-top: 20px;
	}

	form {
		text-align: left;
	}

	#portfolio .description p {
		margin-top: 40px;
	}

	#portfolio section {
		font-size: 10px;
	}

	#portfolio .overlay > * {
		font-size: 200%;
	}

	#portfolio p, h6 {
		text-align: left;
	}

	#contact textarea {
		width: 90%;
	}
}

@media screen and (max-width: 570px) {

	#home nav {
		width: inherit;
	}
	
	#about .signature {
		float: none;
	}

	#portfolio h2 {
		margin-bottom: 0;
	}

	#portfolio section img {
		display: none;
	}

	#portfolio section {
		width: 100%;
	}

	#portfolio .description > *  {
		display: block;
	}

	#portfolio .description {
		display: table-footer-group;
	}

	#portfolio .heading {
		display: table-header-group;
		font-size: 180%;
		text-align: left;
	}

	#portfolio .overlay {
		min-height: auto;
		padding: 20px;
	}

	#portfolio .description {
		top: 100px;
		position: static;
	}

	#portfolio section {
		min-height: auto;
	}

	#portfolio section:hover .overlay .heading {
	 position: relative;
	 top: -0px;
	 color: white;
	 -webkit-transition: none;
	}

	#portfolio .heading span {
		display: none;
	}
}

@media screen and (max-width: 480px) {
	
	.social-links li {
		display: block;
		width: 100%;
	}

	.social-links {
		width: 100%;
	}

	h1 {
		font-size: 300%;
	}

	#about img {
		width: 60%;
	}

	#skill-set #web-development-skills::before {
		display: none;
	}

	#skill-set .skills {
		width: 100%;
		display: block;
	}

	#portfolio .overlay {
		height: 70%;
	}

}
.fnc {
  /* you can add color names and their values here
  and then simply add classes like .m--blend-$colorName to .fnc-slide 
  to apply specific color for mask blend mode */
}
.fnc-slider {
  overflow: hidden;
  box-sizing: border-box;
  position: relative;
  height: 60vh;
}
.fnc-slider *, .fnc-slider *:before, .fnc-slider *:after {
  box-sizing: border-box;
}
.fnc-slider__slides {
  position: relative;
  height: 100%;
  transition: transform 1s 0.6666666667s;
}
.fnc-slider .m--blend-dark .fnc-slide__inner {
  background-color: #8a8a8a;
}
.fnc-slider .m--blend-dark .fnc-slide__mask-inner {
  background-color: #575757;
}
.fnc-slider .m--navbg-dark {
  background-color: #575757;
}
.fnc-slider .m--blend-green .fnc-slide__inner {
  background-color: #6d9b98;
}
.fnc-slider .m--blend-green .fnc-slide__mask-inner {
  background-color: #42605E;
}
.fnc-slider .m--navbg-green {
  background-color: #42605E;
}
.fnc-slider .m--blend-red .fnc-slide__inner {
  background-color: #ea2329;
}
.fnc-slider .m--blend-red .fnc-slide__mask-inner {
  background-color: #990e13;
}
.fnc-slider .m--navbg-red {
  background-color: #990e13;
}
.fnc-slider .m--blend-blue .fnc-slide__inner {
  background-color: #59aecb;
}
.fnc-slider .m--blend-blue .fnc-slide__mask-inner {
  background-color: #2D7791;
}
.fnc-slider .m--navbg-blue {
  background-color: #2D7791;
}
.fnc-slide {
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  transform: translate3d(0, 0, 0);
}
.fnc-slide.m--before-sliding {
  z-index: 2 !important;
  transform: translate3d(100%, 0, 0);
}
.fnc-slide.m--active-slide {
  z-index: 1;
  transition: transform 1s 0.6666666667s ease-in-out;
  transform: translate3d(0, 0, 0);
}
.fnc-slide__inner {
  position: relative;
  height: 100%;
  background-size: cover;
  background-position: center top;
  transform: translate3d(0, 0, 0);
}
.m--global-blending-active .fnc-slide__inner, .m--blend-bg-active .fnc-slide__inner {
  background-blend-mode: luminosity;
}
.m--before-sliding .fnc-slide__inner {
  transform: translate3d(-100%, 0, 0);
}
.m--active-slide .fnc-slide__inner {
  transition: transform 1s 0.6666666667s ease-in-out;
  transform: translate3d(0, 0, 0);
}
.fnc-slide__mask {
  overflow: hidden;
  z-index: 1;
  position: absolute;
  right: 60%;
  top: 15%;
  width: 50.25vh;
  height: 0vh;
  margin-right: -90px;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 0 0, 6vh 0, 6vh 61vh, 44vh 61vh, 44vh 6vh, 6vh 6vh);
          clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 0 0, 6vh 0, 6vh 61vh, 44vh 61vh, 44vh 6vh, 6vh 6vh);
  transform-origin: 50% 0;
  transition-timing-function: ease-in-out;
}
.m--before-sliding .fnc-slide__mask {
  transform: rotate(-10deg) translate3d(200px, 0, 0);
  opacity: 0;
}
.m--active-slide .fnc-slide__mask {
  transition: transform 0.7s 1.2222222222s, opacity 0.35s 1.2222222222s;
  transform: translate3d(0, 0, 0);
  opacity: 1;
}
.m--previous-slide .fnc-slide__mask {
  transition: transform 0.7s 0.3333333333s, opacity 0.35s 0.6833333333s;
  transform: rotate(10deg) translate3d(-200px, 0, 0);
  opacity: 0;
}
.fnc-slide__mask-inner {
  z-index: -1;
  position: absolute;
  left: 50%;
  top: 50%;
  width: 100vw;
  height: 60vh;
  margin-left: -50vw;
  margin-top: -50vh;
  background-size: cover;
  background-position: center center;
  background-blend-mode: luminosity;
  transform-origin: 50% 16.5vh;
  transition-timing-function: ease-in-out;
}
.m--before-sliding .fnc-slide__mask-inner {
  transform: translateY(0) rotate(10deg) translateX(-200px) translateZ(0);
}
.m--active-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 1.2222222222s;
  transform: translateX(0);
}
.m--previous-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 0.3333333333s;
  transform: translateY(0) rotate(-10deg) translateX(200px) translateZ(0);
}
.fnc-slide__content {
  z-index: 2;
  position: absolute;
  left: 40%;
  top: 40%;
}
.fnc-slide__heading {
  margin-bottom: 10px;
  text-transform: uppercase;
}
.fnc-slide__heading-line {
  overflow: hidden;
  position: relative;
  padding-right: 20px;
  font-size: 50px;
  color: #fff;
  word-spacing: 10px;
}
.fnc-slide__heading-line:nth-child(2) {
  padding-left: 30px;
}
.m--before-sliding .fnc-slide__heading-line {
  transform: translateY(100%);
}
.m--active-slide .fnc-slide__heading-line {
  transition: transform 1.5s 1s;
  transform: translateY(0);
}
.m--previous-slide .fnc-slide__heading-line {
  transition: transform 1.5s;
  transform: translateY(-100%);
}
.fnc-slide__heading-line span {
  display: block;
}
.m--before-sliding .fnc-slide__heading-line span {
  transform: translateY(-100%);
}
.m--active-slide .fnc-slide__heading-line span {
  transition: transform 1.5s 1s;
  transform: translateY(0);
}
.m--previous-slide .fnc-slide__heading-line span {
  transition: transform 1.5s;
  transform: translateY(100%);
}
.fnc-slide__action-btn {
  position: relative;
  margin-left: 200px;
  padding: 5px 15px;
  font-size: 20px;
  line-height: 1;
  color: transparent;
  border: none;
  text-transform: uppercase;
  background: transparent;
  cursor: pointer;
  text-align: center;
  outline: none;
}
.fnc-slide__action-btn span {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  perspective: 1000px;
  transform-style: preserve-3d;
  transition: transform 0.3s;
  transform-origin: 50% 0;
  line-height: 30px;
  color: #fff;
}
.fnc-slide__action-btn span:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-top: none;
  border-bottom: none;
}
.fnc-slide__action-btn span:after {
  content: attr(data-text);
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  line-height: 30px;
  background: #1F2833;
  opacity: 0;
  transform-origin: 50% 0;
  transform: translateY(100%) rotateX(-90deg);
  transition: opacity 0.15s 0.15s;
}
.fnc-slide__action-btn:hover span {
  transform: rotateX(90deg);
}
.fnc-slide__action-btn:hover span:after {
  opacity: 1;
  transition: opacity 0.15s;
}
.fnc-nav {
  z-index: 5;
  position: absolute;
  right: 0;
  bottom: 0;
}
.fnc-nav__bgs {
  z-index: -1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}
.fnc-nav__bg {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}
.fnc-nav__bg.m--nav-bg-before {
  z-index: 2 !important;
  transform: translateX(100%);
}
.fnc-nav__bg.m--active-nav-bg {
  z-index: 1;
  transition: transform 1s 0.6666666667s;
  transform: translateX(0);
}
.fnc-nav__controls {
  font-size: 0;
}
.fnc-nav__control {
  overflow: hidden;
  position: relative;
  display: inline-block;
  vertical-align: top;
  width: 100px;
  height: 50px;
  font-size: 14px;
  color: #fff;
  text-transform: uppercase;
  background: transparent;
  border: none;
  outline: none;
  cursor: pointer;
  transition: background-color 0.5s;
}
.fnc-nav__control.m--active-control {
  background: #1F2833;
}
.fnc-nav__control-progress {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background: #fff;
  transform-origin: 0 50%;
  transform: scaleX(0);
  transition-timing-function: linear !important;
}
.m--with-autosliding .m--active-control .fnc-nav__control-progress {
  transform: scaleX(1);
}
.m--prev-control .fnc-nav__control-progress {
  transform: translateX(100%);
  transition: transform 0.5s !important;
}
.m--reset-progress .fnc-nav__control-progress {
  transform: scaleX(0);
  transition: transform 0s 0s !important;
}
.m--autosliding-blocked .fnc-nav__control-progress {
  transition: all 0s 0s !important;
  transform: scaleX(0) !important;
}

/* NOT PART OF COMMON SLIDER STYLES */
body {
  margin: 0;
}

.demo-cont {
  overflow: hidden;
  position: relative;
  height: 60vh;
  perspective: 1500px;
  background: #000;
}
.demo-cont__credits {
  box-sizing: border-box;
  overflow-y: auto;
  z-index: 1;
  position: absolute;
  right: 0;
  top: 0;
  width: 400px;
  height: 100%;
  padding: 20px 10px 30px;
  background: #303030;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  color: #fff;
  text-align: center;
  transition: transform 0.7s;
  transform: translate3d(100%, 0, 0) rotateY(-45deg);
  will-change: transform;
}
.credits-active .demo-cont__credits {
  transition: transform 0.7s 0.2333333333s;
  transform: translate3d(0, 0, 0);
}
.demo-cont__credits *, .demo-cont__credits *:before, .demo-cont__credits *:after {
  box-sizing: border-box;
}
.demo-cont__credits-close {
  position: absolute;
  right: 20px;
  top: 20px;
  width: 28px;
  height: 28px;
  cursor: pointer;
}
.demo-cont__credits-close:before, .demo-cont__credits-close:after {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 2px;
  margin-top: -1px;
  background: #fff;
}
.demo-cont__credits-close:before {
  transform: rotate(45deg);
}
.demo-cont__credits-close:after {
  transform: rotate(-45deg);
}
.demo-cont__credits-heading {
  text-transform: uppercase;
  font-size: 48px;
  margin-bottom: 20px;
}
.demo-cont__credits-img {
  display: block;
  width: 60%;
  margin: 0 auto 30px;
  border-radius: 10px;
}
.demo-cont__credits-name {
  margin-bottom: 20px;
  font-size: 30px;
}
.demo-cont__credits-link {
  display: block;
  margin-bottom: 10px;
  font-size: 24px;
  color: #fff;
}
.demo-cont__credits-blend {
  font-size: 30px;
  margin-bottom: 10px;
}

.example-slider {
  z-index: 2;
  transform: translate3d(0, 0, 0);
  transition: transform 0.7s;
}
.credits-active .example-slider {
  transform: translate3d(-400px, 0, 0) rotateY(10deg) scale(0.9);
}
.example-slider .fnc-slide-1 .fnc-slide__inner,
.example-slider .fnc-slide-1 .fnc-slide__mask-inner {
  background-image: url("img2/back2.jpg");
}
.example-slider .fnc-slide-2 .fnc-slide__inner,
.example-slider .fnc-slide-2 .fnc-slide__mask-inner {
  background-image: url("img2/back3.jpg");
}
.example-slider .fnc-slide-3 .fnc-slide__inner,
.example-slider .fnc-slide-3 .fnc-slide__mask-inner {
  background-image: url("img2/back4.jpg");
}
.example-slider .fnc-slide-3 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.1);
}
.example-slider .fnc-slide-4 .fnc-slide__inner,
.example-slider .fnc-slide-4 .fnc-slide__mask-inner {
  background-image: url("img2/back1.png");
}
.example-slider .fnc-slide-4 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.2);
}
.example-slider .fnc-slide__heading,
.example-slider .fnc-slide__action-btn,
.example-slider .fnc-nav__control {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

/* COLORFUL SWITCH STYLES 
   ORIGINAL DEMO - https://codepen.io/suez/pen/WQjwOb */
.colorful-switch {
  position: relative;
  width: 180px;
  height: 77.1428571429px;
  margin: 0 auto;
  border-radius: 32.1428571429px;
  background: #cfcfcf;
}
.colorful-switch:before {
  content: "";
  z-index: -1;
  position: absolute;
  left: -5px;
  top: -5px;
  width: 190px;
  height: 87.1428571429px;
  border-radius: 37.1428571429px;
  background: #314239;
  transition: background-color 0.3s;
}
.colorful-switch:hover:before {
  background: #4C735F;
}
.colorful-switch__checkbox {
  z-index: -10;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}
.colorful-switch__label {
  z-index: 1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border-radius: 32.1428571429px;
  cursor: pointer;
}
.colorful-switch__bg {
  position: absolute;
  left: 0;
  top: 0;
  width: 540px;
  height: 100%;
  background: linear-gradient(90deg, #14DCD6 0, #10E7BD 180px, #EF9C29 360px, #E76339 100%);
  transition: transform 0.5s;
  transform: translate3d(-360px, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__bg {
  transform: translate3d(0, 0, 0);
}
.colorful-switch__dot {
  position: absolute;
  left: 131.1428571429px;
  top: 50%;
  width: 5.1428571429px;
  height: 5.1428571429px;
  margin-left: -2.5714285714px;
  margin-top: -2.5714285714px;
  border-radius: 50%;
  background: #fff;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__dot {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__on {
  position: absolute;
  left: 104.1428571429px;
  top: 22.5px;
  width: 19.2857142857px;
  height: 36px;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__on {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__on__inner {
  position: absolute;
  width: 100%;
  height: 100%;
  transition: transform 0.25s 0s cubic-bezier(0.52, -0.96, 0.51, 1.28);
  transform-origin: 100% 50%;
  transform: rotate(45deg) scale(0) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__on__inner {
  transition: transform 0.25s 0.25s cubic-bezier(0.67, -0.16, 0.47, 1.61);
  transform: rotate(45deg) scale(1) translateZ(0);
}
.colorful-switch__on__inner:before, .colorful-switch__on__inner:after {
  content: "";
  position: absolute;
  border-radius: 2.5714285714px;
  background: #fff;
}
.colorful-switch__on__inner:before {
  left: 0;
  bottom: 0;
  width: 100%;
  height: 6.1428571429px;
}
.colorful-switch__on__inner:after {
  right: 0;
  top: 0;
  width: 6.1428571429px;
  height: 100%;
}
.colorful-switch__off {
  position: absolute;
  left: 131.1428571429px;
  top: 50%;
  width: 41.1428571429px;
  height: 41.1428571429px;
  margin-left: -20.5714285714px;
  margin-top: -20.5714285714px;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__off:before, .colorful-switch__off:after {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 5.1428571429px;
  margin-top: -2.5714285714px;
  border-radius: 2.5714285714px;
  background: #fff;
  transition: transform 0.25s 0.25s;
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:before, .colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:after {
  transition-delay: 0s;
}
.colorful-switch__off:before {
  transform: rotate(45deg) scaleX(1) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:before {
  transform: rotate(45deg) scaleX(0) translateZ(0);
}
.colorful-switch__off:after {
  transition-timing-function: cubic-bezier(0.67, -0.16, 0.47, 1.61);
  transform: rotate(-45deg) scaleX(1) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:after {
  transition-timing-function: ease;
  transform: rotate(-45deg) scaleX(0) translateZ(0);
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
                                    <li class="nav-item">
                                        <a class="nav-link" href="Questions.jsp">1:1 Questions</a>
                                    </li>
                            <% MemberDTO log = (MemberDTO)session.getAttribute("info");
                            if (log == null) {%><li  class="nav-item">
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
    <h3 class="demo-cont__credits-name">Nikolay Talanov</h3>
    <a href="https://codepen.io/suez/" target="_blank" class="demo-cont__credits-link">My codepen</a>
    <a href="https://twitter.com/NikolayTalanov" target="_blank" class="demo-cont__credits-link">My twitter</a>
    <h2 class="demo-cont__credits-heading">Based on</h2>
    <a href="https://dribbble.com/shots/2375246-Fashion-Butique-slider-animation" target="_blank" class="demo-cont__credits-link">Concept by Kreativa Studio</a>
    <h4 class="demo-cont__credits-blend">Global Blend Mode</h4>
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
                        <h2>Top Places to visit</h2>
                        <p>Waters make fish every without firmament saw had. Morning air subdue. Our. Air very one. Whales grass is fish whales winged.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img2/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="Morephoto.jsp" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img2/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <a href="#">
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img2/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <a href="#">
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img2/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <a href="#">
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn_1 text-cnter">Discover more</a>
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
                        <h2>Top Hotel & Restaurants</h2>
                        <p>Waters make fish every without firmament saw had. Morning air subdue. Our. Air very one. Whales grass is fish whales winged.</p>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <div class="thumbex">
    						<div class="thumbnail"><a href="javascript:void(0)"><img src="https://bit.ly/2NZ6ahm"/><span>Forest</span></a></div>
  						</div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <div class="thumbex">
    						<div class="thumbnail"><a href="javascript:void(0)"> <img src="https://bit.ly/2vnI5ZM"/><span>Beaches</span></a></div>
  						</div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <div class="thumbex">    
    						<div class="thumbnail"><a href="javascript:void(0)"><img src="https://bit.ly/3qgufUp"/><span>Mountains</span></a></div>
    					</div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
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
    	<body>
  <section id="portfolio">

    <!-- CONTAINER -->
    <div class="container">
      <h2>some of my work...</h2>
    </div>
    <!-- END OF CONTAINER -->

    <div class="container">
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Designed using Sketch, developed using PHP whilst incorporating the BEM methodology. A wide range of
              hooks and filters were utilized to create an E-Commerece themed WordPress site that offers a high degree of
              color customization to reflect company branding.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>PHP</li>
              <li>BEM</li>
              <li>SASS</li>
              <li>Sketch</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688745/codepen/portfolio/venditore.png" alt="Editorial Monitoring Automated Excel Screenshot">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>WordPress (WooCommerce) Theme: Venditore</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Designed using the Selenium library - to fully automate the task of scraping the EGi news website. I then made use of the COM Excel object to create a spreadsheet and paste the headlines from the scraping into automatically created tabs revelant to the news sectors.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>Python</li>
              <li>Selenium</li>
              <li>COM (Component Object Model)</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688773/codepen/portfolio/editorial_excel.jpg" alt="Editorial Monitoring Automated Excel Screenshot">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Editorial Monitoring Job - Automated</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Written using pure JavaScript and the STAND4S Network's quote API, users can do a general search for quotes, get a random quote or can search for quotes from particular authors. Twitter social integration is then included to allow them to tweet it.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>HTML5</li>
              <li>CSS3</li>
              <li>JavaScript</li>
              <li>XML</li>
              <li>STAND4S Network API</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688815/codepen/portfolio/quote_machine.jpg" alt="Quote Machine in Action">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Quote Machine</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- COLUMN 3 -->
      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Was achieved using the Google Maps API to geocode user search terms, data was then retrieved from the Forecast IO API. Users can click on any day in the seven day cycle to get a quick summary on the predicated forecast.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>Google Maps API</li>
              <li>Forecast API</li>
              <li>AJAX</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688847/codepen/portfolio/weather_app.jpg" alt="Weather Web Application Displaying the Weather for London">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Weather Web Application</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Made using AngularJS and AJAX using multiple asynchronous API calls within a closure. The search functionality made use of the ng-model and filter feature of the AngularJS Framework.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>AnuglarJS</li>
              <li>JavaScript</li>
              <li>Twitchtv API</li>
              <li>HTML &amp; CSS</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688882/codepen/portfolio/twitch_tv.jpg" alt="Twitchtv API screenshot">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Twitchtv JSON API</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Created using a mixture of pure JavaScript and JQuery, users are challenged to remember a sequence of steps based on the popular memory game Simon Says. Users also have the ability to swap between the normal Simon Says with default sounds and also the Animal Simon Says with fitting animal effects.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>JavaScript</li>
              <li>JQuery</li>
              <li>Less</li>
              <li>Font Awesome</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688912/codepen/portfolio/simon_says.png" alt="Simon Says Game">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Simon Says Animals</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- COLUMN 1 -->
      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              Made with a combination of JQuery &amp; Bootstrap. Players are free to choose whether they wish to play as X or O. They are then pitted against the Computer who throughout the game makes varying comments towards the player.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>JQuery</li>
              <li>Bootstrap (Modal)</li>
              <li>HTML &amp; CSS</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688951/codepen/portfolio/tictactoe.png" alt="Tic Tac Toe Screenshot">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Tic Tac Toe</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->

      <!-- COLUMN 2 -->
      <!-- SECTION -->
      <section>
        <!-- OVERLAY -->
        <div class="overlay">
          <!-- DESCRIPTION -->
          <div class="description">
            <p>
              A real time Chat application built using the MeteorJS framework working alongside a MongoDB database. The App was fully tested to work on the Android Platform via MeteorJS' support for Cordova.
            </p>

            <h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
            <ul class="tools vertical-list">
              <li>MeteorJS</li>
              <li>JavaScript</li>
              <li>MongoDB</li>
              <li>Stylus</li>
            </ul>
          </div>
          <!-- END OF DESCRIPTION -->

          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688983/codepen/portfolio/chatter_box.png" alt="Chatterbox ">
          <h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Chatterbox</h4>
        </div>
        <!-- END OF OVERLAY -->
      </section>
      <!-- END OF SECTION -->
  </section>
  <!-- END OF PORTFOLIO -->
  <!-- LANDING PAGE -->
  <section id="home">
    <!-- OVERLAY -->
    <div class="overlay">
      <!-- PRIMARY NAVIGATION -->
      <nav role="navigation">
        <ul class="vertical-list">
          <li><a href="#home">Home</a></li>
          <li><a href="#about">About me</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#contact">Contact Me</a></li>
        </ul>
      </nav>
      <!-- END OF PRIMARY NAVIGATION -->

      <!-- CONTAINER -->
      <div class="container">
        <h1><span class="logo">lab</span><small>web / automation development</small></h1>
        <ul class="social-links vertical-list">
          <li><a href="https://twitter.com/labDevelopments" class="noir twitter" target="_blank">Twitter</a></li>
          <li><a href="https://www.planecode.co.uk" class="noir linkedin" target="_blank">Blog</a></li>
          <li><a href="https://www.freecodecamp.com/labriffa" class="noir freecodecamp" target="_blank">freeCodeCamp</a></li>
        </ul>
      </div>
      <!-- END OF CONTAINER -->
    </div>
    <!-- END OF OVERLAY -->
  </section>
  <!-- END OF LANDING PAGE -->

  <!-- ABOUT -->
  <section id="about">
    <!-- CONTAINER -->
    <div class="container">
      <h2>a little about me...</h2>
      <div class="row info">
        <div class="col-sm-8">
          <p>
            I'm currently studying Software Engineering at Salford University having just completed my 2nd year. I obsess over the minor details in CSS/HTML and am passionate in getting computers to more effectively
            on your side by freeing you of the burdens of carrying out repetitive tasks through automative processes.
            <span class="signature">.lewis briffa</span>
        </div>

        <div class="col-md-4">
          <img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688702/codepen/portfolio/profile.jpg" alt="Lewis Alberto Briffa" class="img-responsive img-circle">
        </div>
      </div>

      <div id="skill-set">
        <h3>Skills</h3>
        <ul class="vertical-list">
          <li>
            <ul class="vertical-list skills" id="web-development-skills">
              <li>HTML</li>
              <li>CSS</li>
              <li>JavaScript</li>
            </ul>
          </li>
          <li>
            <ul class="vertical-list skills" id="automation-skills">
              <li>AutoHotKey</li>
            </ul>
          </li>

          <li>
            <ul class="vertical-list skills" id="misc-skills">
              <li>Regular Expressions</li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- END OF CONTAINER -->
  </section>
  <!-- END OF ABOUT -->

  <!-- PORTFOLIO -->

  </div>

  <!-- CONTACT PAGE -->
  <section id="contact">
    <div class="overlay">
      <div class="container">
        <h2>get in touch...</h2>

        <div class="row">
          <div class="col-lg-9">
            <form role="form" method="POST">
              <div class="form-group">
                <label for="nameTXT">Your Name</label>
                <input type="text" id="nameTXT" name="nameTXT">
              </div>

              <div class="form-group">
                <label for="emailTXT">Email Address</label>
                <input type="email" id="emailTXT" name="emailTXT">
              </div>

              <div class="form-group">
                <label for="subjectTXT">Subject</label>
                <input type="text" id="subjectTXT" name="subjectTXT">
              </div>

              <div class="form-group">
                <label for="messageTXT">Message</label>
                <textarea cols="36" rows="8" id="messageTXT" name="messageTXT"></textarea>
              </div>

              <button type="submit" class="noir" id="submitBTN" name="submitBTN"><span class="glyphicon glyphicon-send"></span>Send</button>
            </form>
          </div>

          <div class="col-lg-3 overflow">
            <ul class="social-links vertical-list">
              <li><a href="https://twitter.com/labDevelopments" class="noir twitter" target="_blank">Twitter</a></li>
              <li><a href="https://www.planecode.co.uk" class="noir linkedin" target="_blank">Blog</a></li>
              <li><a href="https://www.freecodecamp.com/labriffa" class="noir freecodecamp" target="_blank">freeCodeCamp</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END OF CONTACT PAGE -->
</body>
</html>