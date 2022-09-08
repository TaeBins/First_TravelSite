<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

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

.text-1 {
  font-family:Roboto;
}
.text-1 a{
  color: #000000;
  text-decoration: none;
}
.csslider1 {
	display: inline-block;
	position: relative;
	max-width: 480px;
	
	width: 100%;
	margin-top: 10px;
}
.csslider1 > .cs_anchor {
	display: none;
}
.csslider1 > ul {
	position: relative;
	z-index: 1;
	font-size: 0;
	line-height: 0;
	margin: 0 auto;
	padding: 0;
	
	overflow: hidden;
	white-space: nowrap;
}
.csslider1 > ul > li.img img {
	width: 100%;
}
.csslider1 > ul > li.img {
	font-size: 0pt;

	-khtml-user-select: none;
	-moz-user-select: none;
	user-select: none;
}
.csslider1 > ul > li {
	position: relative;
	display: inline-block;
	width: 100%;
	height: 100%;
	overflow: hidden;
	font-size: 15px;
	font-size: initial;
	line-height: normal;
	white-space: normal;
	vertical-align: top;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;

	-webkit-transform: translate3d(0,0,0);
	-moz-transform: translate3d(0,0,0);
	-ms-transform: translate3d(0,0,0);
	-o-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}
.csslider1 .cs_lnk{
	position: absolute;
	top: -9999px;
	left: -9999px;
	font-size: 0pt;
	opacity: 0;
	filter: alpha(opacity=0);
}.csslider1 > .cs_arrowprev,
.csslider1 > .cs_arrownext {
	position: absolute;
	top: 50%;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;

	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	z-index: 5;
}
.csslider1 > .cs_arrowprev > label,
.csslider1 > .cs_arrownext > label {
	position: absolute;

	text-decoration: none;
	cursor: pointer;
	opacity: 0;
	z-index: -1;
}
.csslider1 > .cs_arrowprev {
	left: 0;
}
.csslider1 > .cs_arrownext {
	right: 0;
}

.csslider1 > .cs_arrowprev > label.num2,
.csslider1 > .cs_arrownext > label.num1 {
	opacity: 1;
	z-index: 5;
}
.csslider1 > .slide:checked ~ .cs_arrowprev > label,
.csslider1 > .slide:checked ~ .cs_arrownext > label {
	opacity: 0;
	z-index: -1;
}



.csslider1 > #cs_slide1_0:checked ~ .cs_arrowprev > label.num2,
.csslider1 > #cs_slide1_0:checked ~ .cs_arrownext > label.num1, 
.csslider1 > #cs_slide1_1:checked ~ .cs_arrowprev > label.num0,
.csslider1 > #cs_slide1_1:checked ~ .cs_arrownext > label.num2, 
.csslider1 > #cs_slide1_2:checked ~ .cs_arrowprev > label.num1,
.csslider1 > #cs_slide1_2:checked ~ .cs_arrownext > label.num0 {
	opacity: 1;
	z-index: 5;
}

/* calculate autoplay */
@-webkit-keyframes arrow {
	0%, 33.32333333333334% { opacity: 1; z-index: 5; }
	33.333333333333336%, 100%	{ opacity: 0; z-index: -1; }
}
@-moz-keyframes arrow {
	0%, 33.32333333333334% { opacity: 1; z-index: 5; }
	33.333333333333336%, 100%	{ opacity: 0; z-index: -1; }
}
@-ms-keyframes arrow {
	0%, 33.32333333333334% { opacity: 1; z-index: 5; }
	33.333333333333336%, 100%	{ opacity: 0; z-index: -1; }
}
@-o-keyframes arrow {
	0%, 33.32333333333334% { opacity: 1; z-index: 5; }
	33.333333333333336%, 100%	{ opacity: 0; z-index: -1; }
}
@keyframes arrow {
	0%, 33.32333333333334% { opacity: 1; z-index: 5; }
	33.333333333333336%, 100%	{ opacity: 0; z-index: -1; }
}


.csslider1 > #cs_play1:checked ~ .cs_arrowprev > label.num2,
.csslider1 > #cs_play1:checked ~ .cs_arrownext > label.num1,
.csslider1 > #cs_pause1:checked ~ .cs_arrowprev > label.num2,
.csslider1 > #cs_pause1:checked ~ .cs_arrownext > label.num1 {
	-webkit-animation: arrow 24000ms infinite -2000ms;
	-moz-animation: arrow 24000ms infinite -2000ms;
	-ms-animation: arrow 24000ms infinite -2000ms;
	-o-animation: arrow 24000ms infinite -2000ms;
	animation: arrow 24000ms infinite -2000ms;
	
}
.csslider1 > #cs_play1:checked ~ .cs_arrowprev > label.num0,
.csslider1 > #cs_play1:checked ~ .cs_arrownext > label.num2,
.csslider1 > #cs_pause1:checked ~ .cs_arrowprev > label.num0,
.csslider1 > #cs_pause1:checked ~ .cs_arrownext > label.num2 {
	-webkit-animation: arrow 24000ms infinite 6000ms;
	-moz-animation: arrow 24000ms infinite 6000ms;
	-ms-animation: arrow 24000ms infinite 6000ms;
	-o-animation: arrow 24000ms infinite 6000ms;
	animation: arrow 24000ms infinite 6000ms;
	
}
.csslider1 > #cs_play1:checked ~ .cs_arrowprev > label.num1,
.csslider1 > #cs_play1:checked ~ .cs_arrownext > label.num0,
.csslider1 > #cs_pause1:checked ~ .cs_arrowprev > label.num1,
.csslider1 > #cs_pause1:checked ~ .cs_arrownext > label.num0 {
	-webkit-animation: arrow 24000ms infinite 14000ms;
	-moz-animation: arrow 24000ms infinite 14000ms;
	-ms-animation: arrow 24000ms infinite 14000ms;
	-o-animation: arrow 24000ms infinite 14000ms;
	animation: arrow 24000ms infinite 14000ms;
	
}


.csslider1.cs_pauseHover:hover > .cs_arrowprev > label,
.csslider1 > #cs_pause1:checked ~ .cs_arrowprev > label,
.csslider1.cs_pauseHover:hover > .cs_arrownext > label,
.csslider1 > #cs_pause1:checked ~ .cs_arrownext > label {
	-webkit-animation-play-state: paused !important;
	-moz-animation-play-state: paused !important;
	-ms-animation-play-state: paused !important;
	-o-animation-play-state: paused !important;
	animation-play-state: paused !important;
}

/* stop */
.csslider1 > .slide:checked ~ .cs_arrowprev > label,
.csslider1 > .slide:checked ~ .cs_arrownext > label {
	-webkit-animation: none;
	-moz-animation: none;
	-ms-animation: none;
	-o-animation: none;
	animation: none;
}


/* /calculate autoplay */
.csslider1 > .cs_bullets {
	position: absolute;
	left: 0;
	width: 100%;
	z-index: 6;
	font-size: 0;
	line-height: 8pt;
	text-align: center;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.csslider1 > .cs_bullets > div {
	margin-left: -50%;
	width: 100%;
}
.csslider1 > .cs_bullets > label {
	position: relative;
	display: inline-block;
	cursor: pointer;
}
.csslider1 > .cs_bullets > label > .cs_thumb {
	visibility: hidden;
	position: absolute;
	opacity: 0;
	z-index: 1;
	line-height: 0;
	left: -44px;
	top: -48px;
}.csslider1 > .cs_description {
	z-index: 3;
}
.csslider1 > .cs_description a,
.csslider1 > .cs_description a:visited,
.csslider1 > .cs_description a:active {
	color: inherit;
}
.csslider1 > .cs_description a:hover {
	text-decoration: none;
}
.csslider1 > .cs_description > label {
	position: absolute;
	word-wrap: break-word;
	white-space: normal;
	text-align: left;
	max-width: 50%;
	left: 0;
}
.csslider1 > .cs_description > label > span {
	vertical-align: top;
}
.csslider1 > .cs_description > label span {
	display: inline-block;
}

.csslider1 > ul > li {
	position: absolute;
	left: 0;
	top: 0;
	display: inline-block;
	opacity: 0;
	z-index: 1;
  
  	-webkit-transition: opacity 2000ms ease, -webkit-transform 24000ms linear;
  	-moz-transition: opacity 2000ms ease, -moz-transform 24000ms linear;
  	-ms-transition: opacity 2000ms ease, -ms-transform 24000ms linear;
  	-o-transition: opacity 2000ms ease, -o-transform 24000ms linear;
  	transition: opacity 2000ms ease, transform 24000ms linear;
  	
}

.csslider1 > ul > li.num0 {
	opacity: 0;
	-webkit-transform: scale(1.3) translate(-11.53846%, 11.53846%);
	-moz-transform: scale(1.3) translate(-11.53846%, 11.53846%);
	-ms-transform: scale(1.3) translate(-11.53846%, 11.53846%);
	-o-transform: scale(1.3) translate(-11.53846%, 11.53846%);
	transform: scale(1.3) translate(-11.53846%, 11.53846%);
	
}
.csslider1 > ul > li.num1 {
	opacity: 0;
	-webkit-transform: scale(1.3) translate(11.53846%, 11.53846%);
	-moz-transform: scale(1.3) translate(11.53846%, 11.53846%);
	-ms-transform: scale(1.3) translate(11.53846%, 11.53846%);
	-o-transform: scale(1.3) translate(11.53846%, 11.53846%);
	transform: scale(1.3) translate(11.53846%, 11.53846%);
	
}
.csslider1 > ul > li.num2 {
	opacity: 0;
	-webkit-transform: scale(1.3) translate(-11.53846%, -11.53846%);
	-moz-transform: scale(1.3) translate(-11.53846%, -11.53846%);
	-ms-transform: scale(1.3) translate(-11.53846%, -11.53846%);
	-o-transform: scale(1.3) translate(-11.53846%, -11.53846%);
	transform: scale(1.3) translate(-11.53846%, -11.53846%);
	
}


.csslider1 > ul > li.num0 {
	opacity: 1;
	z-index: 2;
}
.csslider1 > .slide:checked ~ ul > li.num0 {
	opacity: 0;
	z-index: 1;
}


.csslider1 > #cs_slide1_0:checked ~ ul > li.num0,.csslider1 > #cs_slide1_1:checked ~ ul > li.num1,.csslider1 > #cs_slide1_2:checked ~ ul > li.num2 {
	opacity: 1;
	-webkit-transform: scale(1) translate(0, 0);
	-moz-transform: scale(1) translate(0, 0);
	-ms-transform: scale(1) translate(0, 0);
	-o-transform: scale(1) translate(0, 0);
	transform: scale(1) translate(0, 0);
	
	z-index: 2;
}




/* calculate autoplay */
@-webkit-keyframes kenbernsBR {
	0%, 100% { -webkit-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -webkit-transform: scale(1.3) translate(11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-moz-keyframes kenbernsBR {
	0%, 100% { -moz-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -moz-transform: scale(1.3) translate(11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-ms-keyframes kenbernsBR {
	0%, 100% { -ms-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -ms-transform: scale(1.3) translate(11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-o-keyframes kenbernsBR {
	0%, 100% { -o-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -o-transform: scale(1.3) translate(11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@keyframes kenbernsBR {
	0%, 100% { transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { transform: scale(1.3) translate(11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-webkit-keyframes kenbernsBL {
	0%, 100% { -webkit-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -webkit-transform: scale(1.3) translate(11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-moz-keyframes kenbernsBL {
	0%, 100% { -moz-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -moz-transform: scale(1.3) translate(11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-ms-keyframes kenbernsBL {
	0%, 100% { -ms-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -ms-transform: scale(1.3) translate(11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-o-keyframes kenbernsBL {
	0%, 100% { -o-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -o-transform: scale(1.3) translate(11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@keyframes kenbernsBL {
	0%, 100% { transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { transform: scale(1.3) translate(11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-webkit-keyframes kenbernsTL {
	0%, 100% { -webkit-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -webkit-transform: scale(1.3) translate(-11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-moz-keyframes kenbernsTL {
	0%, 100% { -moz-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -moz-transform: scale(1.3) translate(-11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-ms-keyframes kenbernsTL {
	0%, 100% { -ms-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -ms-transform: scale(1.3) translate(-11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-o-keyframes kenbernsTL {
	0%, 100% { -o-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -o-transform: scale(1.3) translate(-11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@keyframes kenbernsTL {
	0%, 100% { transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { transform: scale(1.3) translate(-11.53846%, -11.53846%); opacity: 0; z-index: 2; }
}
@-webkit-keyframes kenbernsTR {
	0%, 100% { -webkit-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -webkit-transform: scale(1.3) translate(-11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-moz-keyframes kenbernsTR {
	0%, 100% { -moz-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -moz-transform: scale(1.3) translate(-11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-ms-keyframes kenbernsTR {
	0%, 100% { -ms-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -ms-transform: scale(1.3) translate(-11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@-o-keyframes kenbernsTR {
	0%, 100% { -o-transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { -o-transform: scale(1.3) translate(-11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}
@keyframes kenbernsTR {
	0%, 100% { transform: scale(1); opacity: 0 }
	8.333333333333334%, 33.333333333333336% { opacity: 1 }
	41.66666666666667%, 66.66666666666666% { transform: scale(1.3) translate(-11.53846%, 11.53846%); opacity: 0; z-index: 2; }
}



.csslider1 > #cs_play1:checked ~ ul > li.num0,
.csslider1 > #cs_pause1:checked ~ ul > li.num0 {
	-webkit-animation: kenbernsTR 24000ms infinite -2000ms linear;
	-moz-animation: kenbernsTR 24000ms infinite -2000ms linear;
	-ms-animation: kenbernsTR 24000ms infinite -2000ms linear;
	-o-animation: kenbernsTR 24000ms infinite -2000ms linear;
	animation: kenbernsTR 24000ms infinite -2000ms linear;
	
}
.csslider1 > #cs_play1:checked ~ ul > li.num1,
.csslider1 > #cs_pause1:checked ~ ul > li.num1 {
	-webkit-animation: kenbernsBR 24000ms infinite 6000ms linear;
	-moz-animation: kenbernsBR 24000ms infinite 6000ms linear;
	-ms-animation: kenbernsBR 24000ms infinite 6000ms linear;
	-o-animation: kenbernsBR 24000ms infinite 6000ms linear;
	animation: kenbernsBR 24000ms infinite 6000ms linear;
	
}
.csslider1 > #cs_play1:checked ~ ul > li.num2,
.csslider1 > #cs_pause1:checked ~ ul > li.num2 {
	-webkit-animation: kenbernsTL 24000ms infinite 14000ms linear;
	-moz-animation: kenbernsTL 24000ms infinite 14000ms linear;
	-ms-animation: kenbernsTL 24000ms infinite 14000ms linear;
	-o-animation: kenbernsTL 24000ms infinite 14000ms linear;
	animation: kenbernsTL 24000ms infinite 14000ms linear;
	
}




.csslider1 > #cs_play1:checked ~ ul > li,
.csslider1 > #cs_pause1:checked ~ ul > li {
	-webkit-transition: none;
	-moz-transition: none;
	-ms-transition: none;
	-o-transition: none;
	transition: none;
	
}



.csslider1.cs_pauseHover:hover > ul > li,
.csslider1 > #cs_pause1:checked ~ ul > li{
	-webkit-animation-play-state: paused !important;
	-moz-animation-play-state: paused !important;
	-ms-animation-play-state: paused !important;
	-o-animation-play-state: paused !important;
	animation-play-state: paused !important;
}

/* stop */

.csslider1 > .slide:checked ~ ul > li {
	-webkit-animation: none;
	-moz-animation: none;
	-ms-animation: none;
	-o-animation: none;
	animation: none;
}

/* /calculate autoplay */
.csslider1 {
	-webkit-perspective: 500px;
	-moz-perspective: 500px;
	-ms-perspective: 500px;
	-o-perspective: 500px;
	perspective: 500px;
	
}
.csslider1 > .cs_play_pause {
  	-webkit-transition: .5s opacity 0s ease;
  	-moz-transition: .5s opacity 0s ease;
  	-ms-transition: .5s opacity 0s ease;
  	-o-transition: .5s opacity 0s ease;
  	transition: .5s opacity 0s ease;
  	
}
.csslider1 > .cs_arrowprev {
  	-webkit-transition: .5s opacity .15s ease, .5s -webkit-transform .15s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-moz-transition: .5s opacity .15s ease, .5s -moz-transform .15s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-ms-transition: .5s opacity .15s ease, .5s -ms-transform .15s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-o-transition: .5s opacity .15s ease, .5s -o-transform .15s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	transition: .5s opacity .15s ease, .5s transform .15s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	
	-webkit-transform: rotateY(-90deg);
	-moz-transform: rotateY(-90deg);
	-ms-transform: rotateY(-90deg);
	-o-transform: rotateY(-90deg);
	transform: rotateY(-90deg);
	
}
.csslider1 > .cs_arrownext {
  	-webkit-transition: .5s opacity .3s ease, .5s -webkit-transform .3s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-moz-transition: .5s opacity .3s ease, .5s -moz-transform .3s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-ms-transition: .5s opacity .3s ease, .5s -ms-transform .3s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-o-transition: .5s opacity .3s ease, .5s -o-transform .3s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	transition: .5s opacity .3s ease, .5s transform .3s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	
	-webkit-transform: rotateY(90deg);
	-moz-transform: rotateY(90deg);
	-ms-transform: rotateY(90deg);
	-o-transform: rotateY(90deg);
	transform: rotateY(90deg);
	
}
.csslider1 > .cs_arrowprev,
.csslider1 > .cs_arrownext,
.csslider1 > .cs_play_pause {
	opacity: 0;
}
.csslider1:hover > .cs_arrowprev,
.csslider1:hover > .cs_arrownext,
.csslider1:hover > .cs_play_pause {
	opacity: 1;
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	-ms-transform: rotateX(0deg);
	-o-transform: rotateX(0deg);
	transform: rotateX(0deg);
	
}.csslider1 > .cs_arrowprev > label,
.csslider1 > .cs_arrownext > label {
	overflow: hidden;
	margin-top: -35px;
	width: 40px;
	height: 70px;

	/* Fallback for web browsers that doesn't support RGBa */
	background: #000;
	background-color: rgba(0,0,0,0.6);

	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.csslider1 > .cs_arrowprev {
	left: 70px;
}
.csslider1 > .cs_arrownext {
	right: 70px;
}
.csslider1 > .cs_arrowprev > label {
	right: 0;
}
.csslider1 > .cs_arrownext > label {
	left: 0;
}
.csslider1 > .cs_arrowprev > label:after {
	content: '\e800';
}
.csslider1 > .cs_arrownext > label:after {
	content: '\e801';
}
.csslider1 > .cs_arrowprev > label:after,
.csslider1 > .cs_arrownext > label:after {
	display: block;
	font: 40px "demurecontrols";
	text-align: center;
	line-height: 76px;
	color: #fff;
}




.csslider1 > .cs_arrowprev > label,
.csslider1 > .cs_arrownext > label {
	-webkit-transition: 300ms width ease, 300ms margin-left ease, 300ms background-color ease;
	-moz-transition: 300ms width ease, 300ms margin-left ease, 300ms background-color ease;
	-ms-transition: 300ms width ease, 300ms margin-left ease, 300ms background-color ease;
	-o-transition: 300ms width ease, 300ms margin-left ease, 300ms background-color ease;
	transition: 300ms width ease, 300ms margin-left ease, 300ms background-color ease;
	
}
.csslider1 > .cs_arrowprev:hover > label {
	background-color: #E34B64;
	width: 70px;
}
.csslider1 > .cs_arrownext:hover > label {
	background-color: #E34B64;
	width: 70px;
}.csslider1 > .cs_bullets {
	bottom: 5px;
	margin-bottom: 5px;
}

.csslider1 > .cs_bullets > label {
	-webkit-perspective: 500px;
	-moz-perspective: 500px;
	-ms-perspective: 500px;
	-o-perspective: 500px;
	perspective: 500px;
	
}

.csslider1 > .cs_bullets > label > .cs_thumb {
	border: 3px solid #E34B64;
	margin-top: -11px;
	-webkit-transition: opacity 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), -webkit-transform 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), visibility 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-moz-transition: opacity 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), -moz-transform 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), visibility 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-ms-transition: opacity 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), -ms-transform 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), visibility 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-o-transition: opacity 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), -o-transform 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), visibility 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	transition: opacity 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), transform 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275), visibility 0.5s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	
	-webkit-transform-origin: 0% 100% 0px;
	-moz-transform-origin: 0% 100% 0px;
	-ms-transform-origin: 0% 100% 0px;
	-o-transform-origin: 0% 100% 0px;
	transform-origin: 0% 100% 0px;
	
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	-ms-transform: rotateX(90deg);
	-o-transform: rotateX(90deg);
	transform: rotateX(90deg);
	
}
.csslider1 > .cs_bullets > label > .cs_thumb:before {
	content: '';
	position: absolute;
	width: 0; 
	height: 0; 
	left: 50%;
	margin-left: -1px;
	bottom: -8px;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	
	border-top: 7px solid #E34B64;
}
.csslider1 > .cs_bullets > label:hover > .cs_thumb {
	visibility: visible;
	opacity: 1;
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	-ms-transform: rotateX(0deg);
	-o-transform: rotateX(0deg);
	transform: rotateX(0deg);
	
}


.csslider1 > .cs_bullets > label {
	margin: 0 6px;
	padding: 9px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	
	/* Fallback for web browsers that doesn't support RGBa */
	background: #000;
	background-color: rgba(0,0,0,0.6);
}

.csslider1 > .cs_bullets > label.num0 {
	background-color: #E34B64;
}
.csslider1 > .slide:checked ~ .cs_bullets > label {
	/* Fallback for web browsers that doesn't support RGBa */
	background: #000;
	background-color: rgba(0,0,0,0.6);
}

.csslider1 > #cs_slide1_0:checked ~ .cs_bullets > label.num0,
.csslider1 > #cs_slide1_1:checked ~ .cs_bullets > label.num1,
.csslider1 > #cs_slide1_2:checked ~ .cs_bullets > label.num2 {
	background-color: #E34B64;
}

.csslider1 > .cs_bullets > label:hover {
	background-color: #E34B64;
}

/* calculate autoplay */
@-webkit-keyframes bullet {
	0%, 33.32333333333334%	{ background-color: #E34B64; }
	33.333333333333336%, 100% { background: #000; background-color: rgba(0,0,0,0.6); }
}
@-moz-keyframes bullet {
	0%, 33.32333333333334%	{ background-color: #E34B64; }
	33.333333333333336%, 100% { background: #000; background-color: rgba(0,0,0,0.6); }
}
@-ms-keyframes bullet {
	0%, 33.32333333333334%	{ background-color: #E34B64; }
	33.333333333333336%, 100% { background: #000; background-color: rgba(0,0,0,0.6); }
}
@-o-keyframes bullet {
	0%, 33.32333333333334%	{ background-color: #E34B64; }
	33.333333333333336%, 100% { background: #000; background-color: rgba(0,0,0,0.6); }
}
@keyframes bullet {
	0%, 33.32333333333334%	{ background-color: #E34B64; }
	33.333333333333336%, 100% { background: #000; background-color: rgba(0,0,0,0.6); }
}


.csslider1 > #cs_play1:checked ~ .cs_bullets > label.num0,
.csslider1 > #cs_pause1:checked ~ .cs_bullets > label.num0 {
	-webkit-animation: bullet 24000ms infinite -2000ms;
	-moz-animation: bullet 24000ms infinite -2000ms;
	-ms-animation: bullet 24000ms infinite -2000ms;
	-o-animation: bullet 24000ms infinite -2000ms;
	animation: bullet 24000ms infinite -2000ms;
	
}
.csslider1 > #cs_play1:checked ~ .cs_bullets > label.num1,
.csslider1 > #cs_pause1:checked ~ .cs_bullets > label.num1 {
	-webkit-animation: bullet 24000ms infinite 6000ms;
	-moz-animation: bullet 24000ms infinite 6000ms;
	-ms-animation: bullet 24000ms infinite 6000ms;
	-o-animation: bullet 24000ms infinite 6000ms;
	animation: bullet 24000ms infinite 6000ms;
	
}
.csslider1 > #cs_play1:checked ~ .cs_bullets > label.num2,
.csslider1 > #cs_pause1:checked ~ .cs_bullets > label.num2 {
	-webkit-animation: bullet 24000ms infinite 14000ms;
	-moz-animation: bullet 24000ms infinite 14000ms;
	-ms-animation: bullet 24000ms infinite 14000ms;
	-o-animation: bullet 24000ms infinite 14000ms;
	animation: bullet 24000ms infinite 14000ms;
	
}




.csslider1 > #cs_play1:checked ~ .cs_bullets > label,
.csslider1 > #cs_pause1:checked ~ .cs_bullets > label {
  	-webkit-transition: none;
  	-moz-transition: none;
  	-ms-transition: none;
  	-o-transition: none;
  	transition: none;
  	
}

.csslider1.cs_pauseHover:hover > .cs_bullets > label,
.csslider1 > #cs_pause1:checked ~ .cs_bullets > label {
	-webkit-animation-play-state: paused !important;
	-moz-animation-play-state: paused !important;
	-ms-animation-play-state: paused !important;
	-o-animation-play-state: paused !important;
	animation-play-state: paused !important;
}

/* stop */

.csslider1 > .slide:checked ~ .cs_bullets > label {
	-webkit-animation: none;
	-moz-animation: none;
	-ms-animation: none;
	-o-animation: none;
	animation: none;
}

/* /calculate autoplay */


.csslider1 > .cs_description > label {
	font: 20px 'Roboto', sans-serif;
	line-height: normal;
	bottom: 35px;
	left: 20px;
	top: auto;
	opacity: 1;
	z-index: 1;

	-webkit-perspective: 500px;
	-moz-perspective: 500px;
	-ms-perspective: 500px;
	-o-perspective: 500px;
	perspective: 500px;
	
}
.csslider1 > .cs_description > label > span {
	margin: 1px 10px;
	padding: 10px;
	color: #fff;

	overflow: hidden;

	-webkit-transform-origin: 0% 0% 0px;
	-moz-transform-origin: 0% 0% 0px;
	-ms-transform-origin: 0% 0% 0px;
	-o-transform-origin: 0% 0% 0px;
	transform-origin: 0% 0% 0px;
	
	
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}


.csslider1 > #cs_slide1_0:checked ~ .cs_description > .num0,
.csslider1 > #cs_slide1_1:checked ~ .cs_description > .num1,
.csslider1 > #cs_slide1_2:checked ~ .cs_description > .num2 {
	z-index: 2;
}



.csslider1 > #cs_slide1_0:checked ~ .cs_description > .num0 > .cs_descr,
.csslider1 > #cs_slide1_1:checked ~ .cs_description > .num1 > .cs_descr,
.csslider1 > #cs_slide1_2:checked ~ .cs_description > .num2 > .cs_descr {
	opacity: 1;
	visibility: visible;
  	-webkit-transition: 750ms opacity 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-moz-transition: 750ms opacity 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-ms-transition: 750ms opacity 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-o-transition: 750ms opacity 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	transition: 750ms opacity 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1350ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	-ms-transform: rotateX(0deg);
	-o-transform: rotateX(0deg);
	transform: rotateX(0deg);
	
}


.csslider1 > #cs_slide1_0:checked ~ .cs_description > .num0 > .cs_title,
.csslider1 > #cs_slide1_1:checked ~ .cs_description > .num1 > .cs_title,
.csslider1 > #cs_slide1_2:checked ~ .cs_description > .num2 > .cs_title {
	opacity: 1;
	visibility: visible;
  	-webkit-transition: 750ms opacity 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1200ms ease;
  	-moz-transition: 750ms opacity 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1200ms ease;
  	-ms-transition: 750ms opacity 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1200ms ease;
  	-o-transition: 750ms opacity 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1200ms ease;
  	transition: 750ms opacity 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 1200ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 1200ms ease;
  	
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	-ms-transform: rotateX(0deg);
	-o-transform: rotateX(0deg);
	transform: rotateX(0deg);
	
}


.csslider1 > #cs_slide1_0:checked ~ .cs_description > .num0 .cs_wrapper,
.csslider1 > #cs_slide1_1:checked ~ .cs_description > .num1 .cs_wrapper,
.csslider1 > #cs_slide1_2:checked ~ .cs_description > .num2 .cs_wrapper {
	opacity: 1;
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	-o-transform: translateX(0);
	transform: translateX(0);
	
}

.csslider1 > .cs_description > label > .cs_title {
	margin: 0px 10px;
	opacity: 0;
	visibility: hidden;
	z-index: 2;
	/* Fallback for web browsers that doesn't support RGBa */
	background: #000;
	background-color: rgba(0,0,0,0.6);
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	-ms-transform: rotateX(90deg);
	-o-transform: rotateX(90deg);
	transform: rotateX(90deg);
	
  	-webkit-transition: 750ms opacity 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 975ms ease;
  	-moz-transition: 750ms opacity 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 975ms ease;
  	-ms-transition: 750ms opacity 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 975ms ease;
  	-o-transition: 750ms opacity 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 975ms ease;
  	transition: 750ms opacity 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 975ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 975ms ease;
  	
}
.csslider1 > .cs_description > label > .cs_descr {
	font-size: 0.8em;
	margin: 1px 10px;
	opacity: 0;
	visibility: hidden;
	z-index: 1;

	background-color: #E34B64;

	-webkit-transform: rotateX(-90deg);
	-moz-transform: rotateX(-90deg);
	-ms-transform: rotateX(-90deg);
	-o-transform: rotateX(-90deg);
	transform: rotateX(-90deg);
	
  	-webkit-transition: 750ms opacity 750ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-moz-transition: 750ms opacity 750ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-ms-transition: 750ms opacity 750ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	-o-transition: 750ms opacity 750ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	transition: 750ms opacity 750ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms visibility 600ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
  	
}


.csslider1 > .cs_description > label > .cs_title > .cs_wrapper {
	-webkit-transform: translateX(-100%);
	-moz-transform: translateX(-100%);
	-ms-transform: translateX(-100%);
	-o-transform: translateX(-100%);
	transform: translateX(-100%);
	
	-webkit-transition: 750ms opacity 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-moz-transition: 750ms opacity 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-ms-transition: 750ms opacity 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-o-transition: 750ms opacity 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	transition: 750ms opacity 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 1450ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	
}
.csslider1 > .cs_description > label > .cs_descr > .cs_wrapper {
	-webkit-transform: translateX(100%);
	-moz-transform: translateX(100%);
	-ms-transform: translateX(100%);
	-o-transform: translateX(100%);
	transform: translateX(100%);
	
	-webkit-transition: 750ms opacity 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -webkit-transform 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-moz-transition: 750ms opacity 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -moz-transform 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-ms-transition: 750ms opacity 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -ms-transform 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	-o-transition: 750ms opacity 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms -o-transform 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	transition: 750ms opacity 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550), 750ms transform 1675ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
	
}


/* calculate autoplay */
@-webkit-keyframes cs_descrWrapper {
	1.53125%, 35.520833333333336%	{ z-index: 2; }
	35.530833333333334%, 100%	{ z-index: 0; }
}
@-moz-keyframes cs_descrWrapper {
	1.53125%, 35.520833333333336%	{ z-index: 2; }
	35.530833333333334%, 100%	{ z-index: 0; }
}
@-ms-keyframes cs_descrWrapper {
	1.53125%, 35.520833333333336%	{ z-index: 2; }
	35.530833333333334%, 100%	{ z-index: 0; }
}
@-o-keyframes cs_descrWrapper {
	1.53125%, 35.520833333333336%	{ z-index: 2; }
	35.530833333333334%, 100%	{ z-index: 0; }
}
@keyframes cs_descrWrapper {
	1.53125%, 35.520833333333336%	{ z-index: 2; }
	35.530833333333334%, 100%	{ z-index: 0; }
}



.csslider1 > #cs_play1:checked ~ .cs_description > .num0 {
	-webkit-animation: cs_descrWrapper 24000ms infinite -1400ms ease;
	-moz-animation: cs_descrWrapper 24000ms infinite -1400ms ease;
	-ms-animation: cs_descrWrapper 24000ms infinite -1400ms ease;
	-o-animation: cs_descrWrapper 24000ms infinite -1400ms ease;
	animation: cs_descrWrapper 24000ms infinite -1400ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num1 {
	-webkit-animation: cs_descrWrapper 24000ms infinite 6600ms ease;
	-moz-animation: cs_descrWrapper 24000ms infinite 6600ms ease;
	-ms-animation: cs_descrWrapper 24000ms infinite 6600ms ease;
	-o-animation: cs_descrWrapper 24000ms infinite 6600ms ease;
	animation: cs_descrWrapper 24000ms infinite 6600ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num2 {
	-webkit-animation: cs_descrWrapper 24000ms infinite 14600ms ease;
	-moz-animation: cs_descrWrapper 24000ms infinite 14600ms ease;
	-ms-animation: cs_descrWrapper 24000ms infinite 14600ms ease;
	-o-animation: cs_descrWrapper 24000ms infinite 14600ms ease;
	animation: cs_descrWrapper 24000ms infinite 14600ms ease;
}



@-webkit-keyframes cs_title {
	1.53125%, 31.792083333333334%	{ opacity: 1; -webkit-transform: rotateX(-9deg); z-index: 2; visibility: visible;}
	2.1875%, 31.135833333333334%	{ opacity: 1; -webkit-transform: rotateX(0deg); z-index: 2; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -webkit-transform: rotateX(90deg); z-index: 2; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-moz-keyframes cs_title {
	1.53125%, 31.792083333333334%	{ opacity: 1; -moz-transform: rotateX(-9deg); z-index: 2; visibility: visible;}
	2.1875%, 31.135833333333334%	{ opacity: 1; -moz-transform: rotateX(0deg); z-index: 2; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -moz-transform: rotateX(90deg); z-index: 2; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-ms-keyframes cs_title {
	1.53125%, 31.792083333333334%	{ opacity: 1; -ms-transform: rotateX(-9deg); z-index: 2; visibility: visible;}
	2.1875%, 31.135833333333334%	{ opacity: 1; -ms-transform: rotateX(0deg); z-index: 2; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -ms-transform: rotateX(90deg); z-index: 2; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-o-keyframes cs_title {
	1.53125%, 31.792083333333334%	{ opacity: 1; -o-transform: rotateX(-9deg); z-index: 2; visibility: visible;}
	2.1875%, 31.135833333333334%	{ opacity: 1; -o-transform: rotateX(0deg); z-index: 2; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -o-transform: rotateX(90deg); z-index: 2; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@keyframes cs_title {
	1.53125%, 31.792083333333334%	{ opacity: 1; transform: rotateX(-9deg); z-index: 2; visibility: visible;}
	2.1875%, 31.135833333333334%	{ opacity: 1; transform: rotateX(0deg); z-index: 2; visibility: visible;}
	33.333333333333336%	{ opacity: 0; transform: rotateX(90deg); z-index: 2; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}



@-webkit-keyframes cs_descr {
	3.0625%, 29.604583333333334%	{ opacity: 1; -webkit-transform: rotateX(9deg); z-index: 1; visibility: visible;}
	4.375%, 28.948333333333334%	{ opacity: 1; -webkit-transform: rotateX(0deg); z-index: 1; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -webkit-transform: rotateX(-90deg); z-index: 1; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-moz-keyframes cs_descr {
	3.0625%, 29.604583333333334%	{ opacity: 1; -moz-transform: rotateX(9deg); z-index: 1; visibility: visible;}
	4.375%, 28.948333333333334%	{ opacity: 1; -moz-transform: rotateX(0deg); z-index: 1; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -moz-transform: rotateX(-90deg); z-index: 1; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-ms-keyframes cs_descr {
	3.0625%, 29.604583333333334%	{ opacity: 1; -ms-transform: rotateX(9deg); z-index: 1; visibility: visible;}
	4.375%, 28.948333333333334%	{ opacity: 1; -ms-transform: rotateX(0deg); z-index: 1; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -ms-transform: rotateX(-90deg); z-index: 1; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@-o-keyframes cs_descr {
	3.0625%, 29.604583333333334%	{ opacity: 1; -o-transform: rotateX(9deg); z-index: 1; visibility: visible;}
	4.375%, 28.948333333333334%	{ opacity: 1; -o-transform: rotateX(0deg); z-index: 1; visibility: visible;}
	33.333333333333336%	{ opacity: 0; -o-transform: rotateX(-90deg); z-index: 1; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}
@keyframes cs_descr {
	3.0625%, 29.604583333333334%	{ opacity: 1; transform: rotateX(9deg); z-index: 1; visibility: visible;}
	4.375%, 28.948333333333334%	{ opacity: 1; transform: rotateX(0deg); z-index: 1; visibility: visible;}
	33.333333333333336%	{ opacity: 0; transform: rotateX(-90deg); z-index: 1; visibility: hidden;}
	33.343333333333334%, 100%	{ z-index: 0; }
}



.csslider1 > #cs_play1:checked ~ .cs_description > .num0  > .cs_title,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num0  > .cs_title {
	-webkit-animation: cs_title 24000ms infinite -1400ms ease;
	-moz-animation: cs_title 24000ms infinite -1400ms ease;
	-ms-animation: cs_title 24000ms infinite -1400ms ease;
	-o-animation: cs_title 24000ms infinite -1400ms ease;
	animation: cs_title 24000ms infinite -1400ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num1  > .cs_title,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num1  > .cs_title {
	-webkit-animation: cs_title 24000ms infinite 6600ms ease;
	-moz-animation: cs_title 24000ms infinite 6600ms ease;
	-ms-animation: cs_title 24000ms infinite 6600ms ease;
	-o-animation: cs_title 24000ms infinite 6600ms ease;
	animation: cs_title 24000ms infinite 6600ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num2  > .cs_title,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num2  > .cs_title {
	-webkit-animation: cs_title 24000ms infinite 14600ms ease;
	-moz-animation: cs_title 24000ms infinite 14600ms ease;
	-ms-animation: cs_title 24000ms infinite 14600ms ease;
	-o-animation: cs_title 24000ms infinite 14600ms ease;
	animation: cs_title 24000ms infinite 14600ms ease;
}


.csslider1 > #cs_play1:checked ~ .cs_description > .num0  > .cs_descr,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num0  > .cs_descr {
	-webkit-animation: cs_descr 24000ms infinite -1400ms ease;
	-moz-animation: cs_descr 24000ms infinite -1400ms ease;
	-ms-animation: cs_descr 24000ms infinite -1400ms ease;
	-o-animation: cs_descr 24000ms infinite -1400ms ease;
	animation: cs_descr 24000ms infinite -1400ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num1  > .cs_descr,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num1  > .cs_descr {
	-webkit-animation: cs_descr 24000ms infinite 6600ms ease;
	-moz-animation: cs_descr 24000ms infinite 6600ms ease;
	-ms-animation: cs_descr 24000ms infinite 6600ms ease;
	-o-animation: cs_descr 24000ms infinite 6600ms ease;
	animation: cs_descr 24000ms infinite 6600ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num2  > .cs_descr,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num2  > .cs_descr {
	-webkit-animation: cs_descr 24000ms infinite 14600ms ease;
	-moz-animation: cs_descr 24000ms infinite 14600ms ease;
	-ms-animation: cs_descr 24000ms infinite 14600ms ease;
	-o-animation: cs_descr 24000ms infinite 14600ms ease;
	animation: cs_descr 24000ms infinite 14600ms ease;
}



@-webkit-keyframes cs_title_text {
	1.53125%, 31.792083333333334%	{ opacity: 1; -webkit-transform: translateX(-1%); }
	2.1875%, 31.135833333333334%	{ opacity: 1; -webkit-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -webkit-transform: translateX(100%); }
}
@-moz-keyframes cs_title_text {
	1.53125%, 31.792083333333334%	{ opacity: 1; -moz-transform: translateX(-1%); }
	2.1875%, 31.135833333333334%	{ opacity: 1; -moz-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -moz-transform: translateX(100%); }
}
@-ms-keyframes cs_title_text {
	1.53125%, 31.792083333333334%	{ opacity: 1; -ms-transform: translateX(-1%); }
	2.1875%, 31.135833333333334%	{ opacity: 1; -ms-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -ms-transform: translateX(100%); }
}
@-o-keyframes cs_title_text {
	1.53125%, 31.792083333333334%	{ opacity: 1; -o-transform: translateX(-1%); }
	2.1875%, 31.135833333333334%	{ opacity: 1; -o-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -o-transform: translateX(100%); }
}
@keyframes cs_title_text {
	1.53125%, 31.792083333333334%	{ opacity: 1; transform: translateX(-1%); }
	2.1875%, 31.135833333333334%	{ opacity: 1; transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; transform: translateX(100%); }
}


@-webkit-keyframes cs_descr_text {
	3.0625%, 29.604583333333334%	{ opacity: 1; -webkit-transform: translateX(1%); }
	4.375%, 28.948333333333334%	{ opacity: 1; -webkit-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -webkit-transform: translateX(-100%); }
}
@-moz-keyframes cs_descr_text {
	3.0625%, 29.604583333333334%	{ opacity: 1; -moz-transform: translateX(1%); }
	4.375%, 28.948333333333334%	{ opacity: 1; -moz-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -moz-transform: translateX(-100%); }
}
@-ms-keyframes cs_descr_text {
	3.0625%, 29.604583333333334%	{ opacity: 1; -ms-transform: translateX(1%); }
	4.375%, 28.948333333333334%	{ opacity: 1; -ms-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -ms-transform: translateX(-100%); }
}
@-o-keyframes cs_descr_text {
	3.0625%, 29.604583333333334%	{ opacity: 1; -o-transform: translateX(1%); }
	4.375%, 28.948333333333334%	{ opacity: 1; -o-transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; -o-transform: translateX(-100%); }
}
@keyframes cs_descr_text {
	3.0625%, 29.604583333333334%	{ opacity: 1; transform: translateX(1%); }
	4.375%, 28.948333333333334%	{ opacity: 1; transform: translateX(0%); }
	33.333333333333336%	{ opacity: 0; transform: translateX(-100%); }
}



.csslider1 > #cs_play1:checked ~ .cs_description > .num0 .cs_title > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num0 .cs_title > .cs_wrapper {
	-webkit-animation: cs_title_text 24000ms infinite -1190ms ease;
	-moz-animation: cs_title_text 24000ms infinite -1190ms ease;
	-ms-animation: cs_title_text 24000ms infinite -1190ms ease;
	-o-animation: cs_title_text 24000ms infinite -1190ms ease;
	animation: cs_title_text 24000ms infinite -1190ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num1 .cs_title > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num1 .cs_title > .cs_wrapper {
	-webkit-animation: cs_title_text 24000ms infinite 6810ms ease;
	-moz-animation: cs_title_text 24000ms infinite 6810ms ease;
	-ms-animation: cs_title_text 24000ms infinite 6810ms ease;
	-o-animation: cs_title_text 24000ms infinite 6810ms ease;
	animation: cs_title_text 24000ms infinite 6810ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num2 .cs_title > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num2 .cs_title > .cs_wrapper {
	-webkit-animation: cs_title_text 24000ms infinite 14810ms ease;
	-moz-animation: cs_title_text 24000ms infinite 14810ms ease;
	-ms-animation: cs_title_text 24000ms infinite 14810ms ease;
	-o-animation: cs_title_text 24000ms infinite 14810ms ease;
	animation: cs_title_text 24000ms infinite 14810ms ease;
}


.csslider1 > #cs_play1:checked ~ .cs_description > .num0 .cs_descr > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num0 .cs_descr > .cs_wrapper {
	-webkit-animation: cs_descr_text 24000ms infinite -1190ms ease;
	-moz-animation: cs_descr_text 24000ms infinite -1190ms ease;
	-ms-animation: cs_descr_text 24000ms infinite -1190ms ease;
	-o-animation: cs_descr_text 24000ms infinite -1190ms ease;
	animation: cs_descr_text 24000ms infinite -1190ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num1 .cs_descr > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num1 .cs_descr > .cs_wrapper {
	-webkit-animation: cs_descr_text 24000ms infinite 6810ms ease;
	-moz-animation: cs_descr_text 24000ms infinite 6810ms ease;
	-ms-animation: cs_descr_text 24000ms infinite 6810ms ease;
	-o-animation: cs_descr_text 24000ms infinite 6810ms ease;
	animation: cs_descr_text 24000ms infinite 6810ms ease;
}
.csslider1 > #cs_play1:checked ~ .cs_description > .num2 .cs_descr > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > .num2 .cs_descr > .cs_wrapper {
	-webkit-animation: cs_descr_text 24000ms infinite 14810ms ease;
	-moz-animation: cs_descr_text 24000ms infinite 14810ms ease;
	-ms-animation: cs_descr_text 24000ms infinite 14810ms ease;
	-o-animation: cs_descr_text 24000ms infinite 14810ms ease;
	animation: cs_descr_text 24000ms infinite 14810ms ease;
}




.csslider1 > #cs_play1:checked ~ .cs_description > label > .cs_title,
.csslider1 > #cs_play1:checked ~ .cs_description > label > .cs_descr,
.csslider1 > #cs_play1:checked ~ .cs_description > label > .cs_title > .cs_wrapper,
.csslider1 > #cs_play1:checked ~ .cs_description > label > .cs_descr > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_title,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_descr,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_title > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_descr > .cs_wrapper {
  	-webkit-transition: none;
  	-moz-transition: none;
  	-ms-transition: none;
  	-o-transition: none;
  	transition: none;
  	
}

.csslider1.cs_pauseHover:hover > .cs_description > label > .cs_title,
.csslider1.cs_pauseHover:hover > .cs_description > label > .cs_descr,
.csslider1.cs_pauseHover:hover > .cs_description > label > .cs_title > .cs_wrapper,
.csslider1.cs_pauseHover:hover > .cs_description > label > .cs_descr > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_title,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_descr,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_title > .cs_wrapper,
.csslider1 > #cs_pause1:checked ~ .cs_description > label > .cs_descr > .cs_wrapper {
	-webkit-animation-play-state: paused !important;
	-moz-animation-play-state: paused !important;
	-ms-animation-play-state: paused !important;
	-o-animation-play-state: paused !important;
	animation-play-state: paused !important;
}

/* stop */
.csslider1 > .slide:checked ~ .cs_description > label {
	-webkit-animation: none;
	-moz-animation: none;
	-ms-animation: none;
	-o-animation: none;
	animation: none;
}


@media
only screen and (max-width: 480px),
only screen and (-webkit-max-device-pixel-ratio: 2)      and (max-width: 480px),
only screen and (   max--moz-device-pixel-ratio: 2)      and (max-width: 480px),
only screen and (     -o-max-device-pixel-ratio: 2/1)    and (max-width: 480px),
only screen and (        max-device-pixel-ratio: 2)      and (max-width: 480px),
only screen and (                max-resolution: 192dpi) and (max-width: 480px),
only screen and (                max-resolution: 2dppx)  and (max-width: 480px) { 
	.csslider1 > .cs_description,
	.csslider1 > .cs_bullets {
		display: none;
	}
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
    

<body margin: auto; text-align: center;">
<!-- Start cssSlider.com -->
	<div class='csslider1 autoplay '>
		<input name="cs_anchor1" id='cs_slide1_0' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_1' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_2' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_play1' type="radio" class='cs_anchor' checked>
		<input name="cs_anchor1" id='cs_pause1' type="radio" class='cs_anchor' >
		<ul>
			<div style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
				<img src="http://cssslider.com/sliders/pen/images/buns.jpg" style="width: 100%;">
			</div>
			<li class='num0 img'>
				 <a href="http://cssslider.com" target=""><img src='http://cssslider.com/sliders/pen/images/buns.jpg' alt='Buns' title='Buns' /> </a> 
			</li>
			<li class='num1 img'>
				 <a href="http://cssslider.com" target=""><img src='http://cssslider.com/sliders/pen/images/buns.jpg' alt='Croissant' title='Croissant' /> </a> 
			</li>
			<li class='num2 img'>
				 <a href="http://cssslider.com" target=""><img src='http://cssslider.com/sliders/pen/images/buns.jpg' alt='Lemon pie' title='Lemon pie' /> </a> 
			</li>
		
		</ul>
		<div class='cs_description'>
			<label class='num0'>
				<span class="cs_title"><span class="cs_wrapper">Buns</span></span>
			</label>
			<label class='num1'>
				<span class="cs_title"><span class="cs_wrapper">Croissant</span></span>
			</label>
			<label class='num2'>
				<span class="cs_title"><span class="cs_wrapper">Lemon pie</span></span>
			</label>
		</div>
		
		<div class='cs_arrowprev'>
			<label class='num0' for='cs_slide1_0'></label>
			<label class='num1' for='cs_slide1_1'></label>
			<label class='num2' for='cs_slide1_2'></label>
		</div>
		<div class='cs_arrownext'>
			<label class='num0' for='cs_slide1_0'></label>
			<label class='num1' for='cs_slide1_1'></label>
			<label class='num2' for='cs_slide1_2'></label>
		</div>
		
		<div class='cs_bullets'>
			<label class='num0' for='cs_slide1_0'>
				<span class='cs_point'></span>
				<span class='cs_thumb'><img src='http://cssslider.com/sliders/pen/tooltips/buns.jpg' alt='Buns' title='Buns' /></span>
			</label>
			<label class='num1' for='cs_slide1_1'>
				<span class='cs_point'></span>
				<span class='cs_thumb'><img src='http://cssslider.com/sliders/pen/tooltips/croissant.jpg' alt='Croissant' title='Croissant' /></span>
			</label>
			<label class='num2' for='cs_slide1_2'>
				<span class='cs_point'></span>
				<span class='cs_thumb'><img src='http://cssslider.com/sliders/pen/tooltips/lemonpie.jpg' alt='Lemon pie' title='Lemon pie' /></span>
			</label>
		</div>
		</div>
		<!-- End cssSlider.com -->
  
  <br /><br />
    </body>
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

	</section>
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