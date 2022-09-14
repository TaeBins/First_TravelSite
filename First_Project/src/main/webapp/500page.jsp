<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
.clearfix:before, .clearfix:after {
	display: table;
	content: ' ';
}

.clearfix:after {
	clear: both;
}

body {
	background: #f0f0f0 !important;
}

#particles-js {
	width: 100%;
	height: 100%;
	background: linear-gradient(0deg, #D3E5E4, #DACFE5);
}

.page-404 .outer {
	position: absolute;
	top: 0;
	display: table;
	width: 100%;
	height: 100%;
}

.page-404 .outer .middle {
	display: table-cell;
	vertical-align: middle;
}

.page-404 .outer .middle .inner {
	width: 300px;
	margin-right: auto;
	margin-left: auto;
}

.page-404 .outer .middle .inner .inner-circle {
	height: 300px;
	border-radius: 50%;
	background-color: #ffffff;
}

.page-404 .outer .middle .inner .inner-circle:hover i {
	color: #39bbdb !important;
	background-color: #f5f5f5;
	box-shadow: 0 0 0 15px #9FC2EB;
}

.page-404 .outer .middle .inner .inner-circle:hover span {
	color: #9FC2EB;
}

.page-404 .outer .middle .inner .inner-circle i {
	font-size: 5em;
	line-height: 1em;
	float: right;
	width: 1.6em;
	height: 1.6em;
	margin-top: -.7em;
	margin-right: -.5em;
	padding: 20px;
	-webkit-transition: all .4s;
	transition: all .4s;
	text-align: center;
	color: #f5f5f5 !important;
	border-radius: 50%;
	background-color: #9FC2EB;
	box-shadow: 0 0 0 15px #f0f0f0;
}

.page-404 .outer .middle .inner .inner-circle span {
	font-size: 11em;
	font-weight: 700;
	line-height: 1.2em;
	display: block;
	-webkit-transition: all .4s;
	transition: all .4s;
	text-align: center;
	color: #e0e0e0;
}

.page-404 .outer .middle .inner .inner-status {
	font-size: 20px;
	display: block;
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
	color: #9FC2EB;
}

.page-404 .outer .middle .inner .inner-detail {
	line-height: 1.4em;
	display: block;
	margin-bottom: 10px;
	text-align: center;
	color: #999999;
}

html {
	cursor: none;
}

#drawing_line {
	position: relative;
	z-index: 1500;
	height: 0;
}

#drawing_line>svg {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
	pointer-events: none;
}

#drawing_line>svg .drawing_line_polyline {
	fill: none;
	stroke: #D2330F;
	stroke-width: 2;
}

#drawing_line>svg .drawing_line_circle {
	fill: #D2330F;
}
</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

	<div id="drawing_line">
		<svg class="drawing_line_svg">
    <circle class="drawing_line_circle" cx="s" cy="0" r="8"></circle>
    <polyline class="drawing_line_polyline" points=""></polyline>
  </svg>
	</div>
	<div id="particles-js">
		<div class="page-404">
			<div class="outer">
				<div class="middle">
					<div class="inner">
						<!--BEGIN CONTENT-->
						<div class="inner-circle">
							<i class="fa fa-home"></i>
							<span>500</span>
						</div>
						<span class="inner-status">Oops! You're lost</span>
						<span class="inner-detail" style="color: #fff;">
							We can not find the page you're looking for.
							<a href="./Main.jsp" class="btn btn-info mtl">
								<i class="fa fa-home"></i>&nbsp; Return home
							</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		particlesJS("particles-js", {
			"particles" : {
				"number" : {
					"value" : 80,
					"density" : {
						"enable" : true,
						"value_area" : 800
					}
				},
				"color" : {
					"value" : "#ffffff"
				},
				"shape" : {
					"type" : "circle",
					"stroke" : {
						"width" : 0,
						"color" : "#000000"
					},
					"polygon" : {
						"nb_sides" : 5
					},
					"image" : {
						"src" : "img/github.svg",
						"width" : 100,
						"height" : 100
					}
				},
				"opacity" : {
					"value" : 0.5,
					"random" : false,
					"anim" : {
						"enable" : false,
						"speed" : 1,
						"opacity_min" : 0.1,
						"sync" : false
					}
				},
				"size" : {
					"value" : 3,
					"random" : true,
					"anim" : {
						"enable" : false,
						"speed" : 40,
						"size_min" : 0.1,
						"sync" : false
					}
				},
				"line_linked" : {
					"enable" : true,
					"distance" : 150,
					"color" : "#ffffff",
					"opacity" : 0.4,
					"width" : 1
				},
				"move" : {
					"enable" : true,
					"speed" : 6,
					"direction" : "none",
					"random" : false,
					"straight" : false,
					"out_mode" : "out",
					"bounce" : false,
					"attract" : {
						"enable" : false,
						"rotateX" : 600,
						"rotateY" : 1200
					}
				}
			},
			"interactivity" : {
				"detect_on" : "canvas",
				"events" : {
					"onhover" : {
						"enable" : true,
						"mode" : "grab"
					},
					"onclick" : {
						"enable" : true,
						"mode" : "push"
					},
					"resize" : true
				},
				"modes" : {
					"grab" : {
						"distance" : 140,
						"line_linked" : {
							"opacity" : 1
						}
					},
					"bubble" : {
						"distance" : 400,
						"size" : 40,
						"duration" : 2,
						"opacity" : 8,
						"speed" : 3
					},
					"repulse" : {
						"distance" : 200,
						"duration" : 0.4
					},
					"push" : {
						"particles_nb" : 4
					},
					"remove" : {
						"particles_nb" : 2
					}
				}
			},
			"retina_detect" : true
		});
	</script>
	<script type="text/javascript">
	var polyline = document.querySelector('.drawing_line_polyline');
	var polyPoints = polyline.getAttribute('points');
	var circle = document.querySelector('.drawing_line_circle');
	var circleX = circle.getAttribute('cx');
	var circleY = circle.getAttribute('cy');
	var circleR = circle.getAttribute('r');

	var total = 12;
	var gap = 30;
	var ease = 0.5;
	var debounce_removeLine;
	var debounce_counter = 0;

	var pointer = {
	  x: window.innerWidth / 2,
	  y: window.innerHeight / 2,
	  tx: 0,
	  ty: 0,
	  dist: 0,
	  scale: 1,
	  speed: 2,
	  circRadius: 8,
	  updateCrds: function () {
	    if (this.x != 0) {
	      this.dist = Math.abs((this.x - this.tx) + (this.y - this.ty));
	      this.scale = Math.max(this.scale + ((100 - this.dist * 8) * 0.01 - this.scale) * 0.1, 0.25); // gt 0.25 = 4px
	      this.tx += (this.x - this.tx) / this.speed;
	      this.ty += (this.y - this.ty) / this.speed;
	    }
	  }
	};

	var points = [];

	$(window).on('mousemove', function (e) {
	  pointer.x = e.clientX;
	  pointer.y = e.clientY;
	  debounce_counter = 0;
	  drawLine();

	  // debounce
	  clearTimeout(debounce_removeLine);
	  debounce_removeLine = setTimeout(() => {
	    //console.log('debounce_removeLine', new Date().getTime());
	    debounce_counter = 12;
	    drawLine();
	  }, 80);
	})

	$(window).on('mousedown', function (e) {
	  pointer.circRadius = 6;
	  drawLine();
	});

	$(window).on('mouseup', function (e) {
	  pointer.circRadius = 8;
	  drawLine();
	});

	function drawLine() {
	  pointer.updateCrds();

	  points.push({
	    x: pointer.tx,
	    y: pointer.ty
	  });
	  while (points.length > total) {
	    points.shift();
	    if (points.length > gap) {
	      for (var i = 0; i < 5; i++) {
	        points.shift();
	      }
	    }
	  }
	  var pointsArr = points.map(point => `${point.x},${point.y}`);
	  polyPoints = pointsArr.join(' ');
	  polyline.setAttribute('points', polyPoints);

	  // circle
	  circleX = pointer.x;
	  circleY = pointer.y;
	  circleR = pointer.scale * pointer.circRadius;

	  circle.setAttribute('cx', circleX);
	  circle.setAttribute('cy', circleY);
	  circle.setAttribute('r', circleR);

	  if (debounce_counter > 0) {
	    debounce_counter--;
	    requestAnimationFrame(drawLine);
	  }
	}
	</script>
</body>
</html>