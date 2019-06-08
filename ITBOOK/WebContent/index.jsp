<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<title>희망의책 대전본부</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Creative Multipurpose Bootstrap Template">

<!-- Favicon -->
<link rel="shortcut icon" href="../assets/images/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/themify-icons/css/themify-icons.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/animate/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/fancybox/css/jquery.fancybox.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/owlcarousel/css/owl.carousel.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/swiper/css/swiper.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

</head>

<body>
	<div class="preloader">
		<img src="../assets/images/preloader.svg" alt="Pre-loader">
	</div>

	<!-- =======================
	header Start-->
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	<!-- =======================
	header End-->

	<!-- =======================
	Main Banner -->
	<section class="p-0">
		<div
			class="swiper-container height-700-responsive swiper-arrow-hover swiper-slider-fade">
			<div class="swiper-wrapper">
				<!-- slide 1-->
				<div class="swiper-slide bg-overlay-dark-2"
					style="background-image: url(https://i.ibb.co/qJR1sJv/book.jpg); background-position: center center; background-size: cover;">
					<div class="container h-100">
						<div class="row d-flex h-100">
							<div
								class="col-lg-8 col-xl-6 mr-auto slider-content justify-content-center align-self-center align-items-start text-left">
								<h2
									class="animated fadeInUp dealy-500 display-6 display-md-4 display-lg-3 font-weight-bold text-white"
									style="width: 700px">희망의 책 대전본부</h2>
								<h3
									class="animated fadeInUp dealy-1000 text-white display-8 display-md-7 alt-font font-italic mb-2 my-md-4"
									style="width: 600px">책으로 행복한 대전, 희망의 책</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- slide 2-->
				<!-- <div class="swiper-slide bg-overlay-dark-2" style="background-image:url(assets/images/banner/02.jpg); background-position: center top; background-size: cover;">
					<div class="container h-100">
						<div class="row d-flex h-100">
							<div class="col-md-8 justify-content-center align-self-center align-items-start mx-auto">
								<div class="slider-content text-center ">
									<h3 class="animated fadeInUp dealy-500 display-8 display-md-7 text-white alt-font font-italic">Build a very unique and professional website</h3>
									<h2 class="animated fadeInUp dealy-1000 display-6 display-md-4 display-lg-3 font-weight-bold text-white">Weâre good. Just ask our moms.</h2>
									<div class="animated fadeInUp mt-3 dealy-1500"><a href="#" class="btn btn-grad">Contact us</a></div>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
			<!-- Slider buttons -->
			<div class="swiper-button-next">
				<i class="ti-angle-right"></i>
			</div>
			<div class="swiper-button-prev">
				<i class="ti-angle-left"></i>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</section>
	<!-- =======================
	Main banner -->

	
	<!-- =======================
	service -->
	<section class="blog pb-0">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 mx-auto">
					<div class="title text-center">
						<h2>독서 모임 게시판</h2>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="owl-carousel arrow-dark arrow-hover" data-dots="false"
						data-items-xl="3" data-items-lg="3" data-items-md="2"
						data-items-sm="2" data-items-xs="1">
						<!-- post -->
									
							<div class="item">
								<div class="post">
									<div class="post-info">
										<div class="post-author">${meetingList.represent}</div>
										,
										<div class="post-time">
											<a href="#!"><fmt:formatDate
													value="${meetingList.metDate}" /></a> ,회원수 :
											${meetingList.headCount}
										</div>
										<a class="post-title" href="#!">${meetingList.metName}</a>
										<p class="mb-0">${meetingList.metIntro}</p>
									</div>
								</div>
							</div>
					<!-- 	<div class="item">
							<div class="post">
								<div class="post-info">
									<div class="post-author">
										<a href="#!"> By Mark C</a>
									</div>
									,
									<div class="post-time">
										<a href="#!">19 Hours ago</a>
									</div>
									<a class="post-title" href="#!">Right my front it wound
										cause fully am sorry</a>
									<p class="mb-0">Weeks views her sight old tears sorry
										suspected its concealed put furnished</p>
								</div>
							</div>
						</div>
						post
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a
										href="#!">Business</a></span>
									<div class="post-author">
										<a href="#!"> By Stephen C</a>
									</div>
									,
									<div class="post-time">
										<a href="#!">1 day ago</a>
									</div>
									<a class="post-title" href="#!">Months had too ham cousin
										remove far spirit</a>
									<p class="mb-0">Two assure Edward whence the was. Who
										worthy yet ten boy denote wonder that!</p>
								</div>
							</div>
						</div>
						post
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a
										href="#!">Creative</a></span>
									<div class="post-author">
										<a href="#!"> By Smith C</a>
									</div>
									,
									<div class="post-time">
										<a href="#!">2 Days ago</a>
									</div>
									<a class="post-title" href="#!">7 Great Lessons You Can
										Learn From Business</a>
									<p class="mb-0">Ample order up in of in ready timed blind
										had now those ought set often which</p>
								</div>
							</div>
						</div> --> 
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="service">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 mx-auto">
					<!-- <div class="title text-center">
						<span class="pre-title">Check out our services</span>
						<h2>Premium and royal service</h2>
						<p class="mb-0">We are an insight and behavior driven creative marketing agency. A Full Service Digital Creative Agency Specializing in: Video Production, Web Design, Branding, Brand Strategy</p>
					</div> -->
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon">
							<i class="ti-agenda"></i>
						</div>
						<h3 class="feature-box-title">공지사항</h3>
						<p class="feature-box-desc">
							 Residence certainly elsewhere something she preferred cordially
							law. Age his surprise formerly Mrs perceive few moderate. Of in <strong>
								power match on</strong> truth worse would an match learn.
								
						</p>
						<a class="mt-3" href="/notice?command=noticeListFormAction">더보기</a>
					</div>
				</div>
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon">
							<i class="ti-ruler-pencil"></i>
						</div>
						<h3 class="feature-box-title"></h3>
						<p class="feature-box-desc">
							Consulted perpetual of pronounce me delivered. Too months nay end
							change relied <abbr title="attribute">who beauty</abbr> wishes
							matter. Shew of john real park so rest we on. Ignorant occasion
							for thoughts
						</p>
						<a class="mt-3" href="#">더보기</a>
					</div>
				</div>
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon">
							<i class="ti-agenda"></i>
						</div>
						<h3 class="feature-box-title">Meet your expectations</h3>
						<p class="feature-box-desc">Why end might ask civil again
							spoil. Dinner she our horses depend remember at children by
							reserved to vicinity. Oh song well four only head busy it. In
							affronting delightful simplicity own.</p>
						<a class="mt-3" href="">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	service -->

	
	<!-- =======================
	package -->
	<section class="package pt-5">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="title text-left">
						<h2>Choose affordable and 100% premium package</h2>
						<p>We are an insight and behaviour driven creative marketing
							agency. A Full package Digital Creative Agency Specializing in:
							Video Production, Web Design, Branding, Brand Strategy, Content
							Marketing and Aerial Cinematography.</p>
						<p>Our passion for customer excellence is just one reason why
							we are the market leader. We've always worked very hard to give
							our customers the best experience in dealing with our company.</p>
					</div>
					<!-- price tab nav -->
					<ul class="nav nav-tabs tab-grad">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#price-1-tab"> Enterprise </a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#price-2-tab"> Business </a></li>
					</ul>
					<!-- price tab end-->
				</div>
				<div class="col-md-5 mt-4 mt-md-0">
					<div class="tab-content p-0">
						<!-- tab 1 (price 1) -->
						<div class="tab-pane show active" id="price-1-tab">
							<div class="card">
								<div class="card-header text-white bg-grad">
									<div class="float-left">
										<h2 class="text-white font-weight-bold mb-0 display-4">
											<span>$</span>149.99
										</h2>
										<div>Enterprise Plan</div>
									</div>
								</div>
								<div class="card-body bg-light ">
									<ul class="list-group list-group-borderless my-3">
										<li class="list-group-item"><i class="fa fa-check"></i>Up
											to 10 users monthly</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited
											updates</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Free
											host & domain included</li>
										<li class="list-group-item"><i class="fa fa-check"></i>24/7
											dedicated Support</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited
											Storage usage</li>
									</ul>
									<a class="btn btn-grad" href="#!">Get it now!</a>
									<div class="offer">-40%</div>
								</div>
							</div>
						</div>
						<!-- tab 2 (price 2) -->
						<div class="tab-pane" id="price-2-tab">
							<div class="card">
								<div class="card-header text-white bg-grad">
									<div class="float-left">
										<h2 class="text-white font-weight-bold mb-0 display-4">
											<span>$</span>129.99
										</h2>
										<div>Business Plan</div>
									</div>
								</div>
								<div class="card-body bg-light ">
									<ul class="list-group list-group-borderless my-3">
										<li class="list-group-item"><i class="fa fa-check"></i>Up
											to 5 users monthly</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited
											updates</li>
										<li class="list-group-item"><i class="fa fa-check"></i>20%
											off on hosting & domain</li>
										<li class="list-group-item"><i class="fa fa-check"></i>24/7
											dedicated Support</li>
										<li class="list-group-item"><i class="fa fa-check"></i>500GB
											Storage usage</li>
									</ul>
									<a class="btn btn-grad" href="#!">Get it now!</a>
									<div class="offer">-25%</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!-- =======================
	call to action-->
	</section>

	<!-- =======================
	footer  -->
	<footer class="footer bg-light pt-6">
		<div class="footer-content pb-3">
			<div class="container">
				<div class="row">
					<!-- Footer widget 1 -->
					<div class="col-md-4">
						<div class="widget">
							<a href="index.html" class="footer-logo"> <!-- footer SVG logo Start -->
								<svg class="footer-logo-item" xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink"
									preserveAspectRatio="xMinYMid" width="325.656" height="100"
									viewBox="0 0 325.656 100">
								  <defs>
								  	<linearGradient id="LogoGradientFooter">
											<stop class="fill-grad-start" offset="0%" />
											<stop class="fill-grad-end" offset="100%" />
										</linearGradient>
									</defs>
								  <g>
									<path
										d="M320.187,75.278 C316.545,78.817 312.335,80.585 307.558,80.585 C302.721,80.585 298.497,78.830 294.885,75.322 C291.271,71.813 289.466,67.749 289.466,63.129 L289.466,55.058 C289.466,50.440 291.243,46.404 294.797,42.953 C298.351,39.503 302.605,37.778 307.558,37.778 C312.393,37.778 316.617,39.488 320.231,42.909 C323.843,46.330 325.650,50.381 325.650,55.058 L325.650,63.129 C325.650,67.690 323.828,71.740 320.187,75.278 ZM316.473,55.086 C316.473,52.763 315.583,50.671 313.807,48.813 C312.029,46.954 309.946,46.023 307.558,46.023 C305.111,46.023 303.013,46.954 301.265,48.813 C299.517,50.671 298.643,52.763 298.643,55.086 L298.643,63.103 C298.643,65.485 299.517,67.620 301.265,69.507 C303.013,71.396 305.111,72.339 307.558,72.339 C309.946,72.339 312.029,71.396 313.807,69.507 C315.583,67.620 316.473,65.485 316.473,63.103 L316.473,55.086 ZM285.184,76.023 C285.184,77.018 284.513,78.027 283.173,79.050 C281.832,80.072 280.551,80.585 279.328,80.585 C278.220,80.585 277.434,80.234 276.968,79.532 L267.529,65.058 L258.090,79.532 C257.565,80.234 256.749,80.585 255.642,80.585 C254.535,80.585 253.296,80.087 251.928,79.094 C250.558,78.100 249.874,77.076 249.874,76.023 C249.874,75.440 250.078,74.883 250.486,74.357 L261.323,58.743 L251.010,44.006 C250.602,43.480 250.398,42.953 250.398,42.427 C250.398,41.374 251.083,40.337 252.452,39.313 C253.821,38.290 255.147,37.778 256.429,37.778 C257.478,37.778 258.206,38.129 258.614,38.830 L267.529,52.865 L276.444,38.918 C276.909,38.159 277.667,37.778 278.716,37.778 C279.881,37.778 281.163,38.290 282.562,39.313 C283.960,40.337 284.659,41.374 284.659,42.427 C284.659,42.896 284.454,43.422 284.047,44.006 L273.647,58.830 L284.572,74.357 C284.979,74.883 285.184,75.440 285.184,76.023 ZM238.687,27.865 C237.230,27.865 235.978,27.383 234.929,26.418 C233.880,25.453 233.356,24.328 233.356,23.041 C233.356,21.696 233.880,20.556 234.929,19.620 C235.978,18.685 237.230,18.216 238.687,18.216 C240.143,18.216 241.397,18.685 242.445,19.620 C243.494,20.556 244.019,21.696 244.019,23.041 C244.019,24.328 243.494,25.453 242.445,26.418 C241.397,27.383 240.143,27.865 238.687,27.865 ZM224.617,79.883 L197.435,79.883 C196.387,79.883 195.585,79.560 195.032,78.910 C194.477,78.260 194.202,77.512 194.202,76.665 C194.202,75.659 194.726,74.416 195.775,72.935 L214.478,45.673 L197.872,45.673 C197.115,45.673 196.444,45.307 195.862,44.572 C195.279,43.837 194.988,42.963 194.988,41.946 C194.988,40.930 195.250,40.069 195.775,39.364 C196.299,38.658 196.998,38.304 197.872,38.304 L223.131,38.304 C224.005,38.304 224.748,38.573 225.360,39.109 C225.972,39.646 226.277,40.422 226.277,41.437 C226.277,42.680 225.810,43.954 224.879,45.256 L206.088,72.515 L224.617,72.515 C225.432,72.515 226.131,72.868 226.714,73.574 C227.296,74.280 227.588,75.169 227.588,76.241 C227.588,77.258 227.311,78.119 226.758,78.825 C226.204,79.531 225.491,79.883 224.617,79.883 ZM182.753,27.865 C181.295,27.865 180.043,27.383 178.994,26.418 C177.946,25.453 177.421,24.328 177.421,23.041 C177.421,21.696 177.946,20.556 178.994,19.620 C180.043,18.685 181.295,18.216 182.753,18.216 C184.208,18.216 185.462,18.685 186.511,19.620 C187.560,20.556 188.084,21.696 188.084,23.041 C188.084,24.328 187.560,25.453 186.511,26.418 C185.462,27.383 184.208,27.865 182.753,27.865 ZM158.544,78.918 C158.077,80.146 156.853,80.760 154.873,80.760 C152.891,80.760 151.639,80.175 151.115,79.006 L143.511,56.374 L135.994,78.743 C135.470,80.087 134.159,80.760 132.061,80.760 C130.139,80.760 128.915,80.087 128.391,78.743 L114.844,43.304 C114.610,42.602 114.494,42.106 114.494,41.813 C114.494,40.760 115.134,39.854 116.417,39.094 C117.698,38.334 119.009,37.953 120.350,37.953 C121.806,37.953 122.738,38.510 123.147,39.620 L132.848,66.901 L140.277,42.690 C140.684,41.345 141.763,40.673 143.511,40.673 C145.259,40.673 146.336,41.345 146.745,42.690 L154.086,67.076 L163.875,39.620 C164.225,38.510 165.127,37.953 166.584,37.953 C167.865,37.953 169.163,38.334 170.474,39.094 C171.785,39.854 172.440,40.790 172.440,41.901 C172.440,42.369 172.323,42.837 172.091,43.304 L158.544,78.918 ZM182.753,38.304 C184.092,38.304 185.200,38.582 186.074,39.137 C186.948,39.694 187.385,40.409 187.385,41.287 L187.385,76.813 C187.385,77.574 186.933,78.275 186.030,78.918 C185.126,79.562 184.034,79.883 182.753,79.883 C181.470,79.883 180.393,79.562 179.519,78.918 C178.645,78.275 178.208,77.574 178.208,76.813 L178.208,41.287 C178.208,40.409 178.630,39.694 179.475,39.137 C180.319,38.582 181.412,38.304 182.753,38.304 ZM238.687,38.304 C240.027,38.304 241.134,38.582 242.008,39.137 C242.882,39.694 243.319,40.409 243.319,41.287 L243.319,76.813 C243.319,77.574 242.867,78.275 241.965,78.918 C241.061,79.562 239.968,79.883 238.687,79.883 C237.405,79.883 236.327,79.562 235.453,78.918 C234.579,78.275 234.142,77.574 234.142,76.813 L234.142,41.287 C234.142,40.409 234.564,39.694 235.410,39.137 C236.254,38.582 237.346,38.304 238.687,38.304 Z"
										class="fill-dark" />
								    <circle cx="50.047" cy="50" r="50.047"
										fill="url(#LogoGradientFooter)" />
								    <path
										d="M86.607,38.585 L55.868,69.317 C53.678,71.508 50.126,71.508 47.936,69.317 C45.745,67.127 45.745,63.577 47.936,61.387 L78.674,30.654 C80.865,28.464 84.416,28.464 86.607,30.654 C88.797,32.844 88.797,36.395 86.607,38.585 ZM26.806,69.317 C25.679,70.444 24.193,70.981 22.716,70.948 C22.636,70.953 22.560,70.972 22.478,70.972 L20.552,70.972 C18.108,70.972 16.128,68.992 16.128,66.548 L16.128,33.452 C16.128,31.008 18.108,29.028 20.552,29.028 L22.478,29.028 C24.922,29.028 26.902,31.008 26.902,33.452 L26.902,53.359 L49.612,30.654 C51.802,28.464 55.354,28.464 57.544,30.654 C59.735,32.844 59.735,36.395 57.544,38.585 L26.806,69.317 Z"
										class="fill-white" />
								  </g>
								</svg> <!-- footer SVG logo End -->
							</a>
							<p class="mt-3">Wizixo is a highly creative, modern, visually
								stunning and Bootstrap 4 Creative Multi-purpose corporate and
								portfolio HTML5 template.</p>
							<p>It is based on the powerful Bootstrap 4 Framework to make
								sure an entirely responsive layout.</p>
						</div>
					</div>
					<!-- Footer widget 2 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget address"
							style="background-image: url('assets/images/world-map.png'); background-position: 50% 20px; background-repeat: no-repeat; background-size: contain;">
							<ul class="list-unstyled">
								<li class="media mb-3"><i class="mr-3 display-8 ti-map-alt"></i>1421
									Coburn Hollow Road Metamora, Near Center Point, IL 61548.</li>
								<li class="media mb-3"><i
									class="mr-3 display-8 ti-headphone-alt"></i> (251) 854-6308</li>
								<li class="media mb-3"><i class="mr-3 display-8 ti-email"></i>
									help@wizixo.com</li>
								<li class="media mb-3"><i class="mr-3 display-8 ti-time"></i>
									<p>
										Mon - Fri: <strong>09:00 - 21:00</strong> <br>Sat & Sun:
										<strong>Closed</strong>
									</p></li>
							</ul>
						</div>
					</div>
					<!-- Footer widget 3 -->
					<div class="col-md-2 col-sm-6">
						<div class="widget">
							<h6>Quick LInks</h6>
							<ul class="nav flex-column primary-hover">
								<li class="nav-item"><a class="nav-link"
									href="about-classic.html">About</a></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>
								<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
								<li class="nav-item"><a class="nav-link"
									href="blog-grid-left-sidebar.html">Blog</a></li>
								<li class="nav-item"><a class="nav-link"
									href="portfolio-grid-column-4.html">Portfolio</a></li>
							</ul>
						</div>
					</div>
					<!-- Footer widget 4 -->
					<div class="col-md-3">
						<div class="widget bg-grad p-4 all-text-white border-radius-3">
							<i class="ti-email newsletter-icon"></i>
							<p class="mb-2">Subscribe to our newsletter to receive
								exclusive offers.</p>
							<div class="form-group mb-0">
								<input class="form-control border-white mb-3" type="email"
									placeholder="Enter email...">
								<button class="btn btn-dark mb-0">Join us</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer widget 4 -->
			</div>
		</div>
		<div class="divider mt-3"></div>
		<!--footer copyright -->
		<div class="footer-copyright py-3">
			<div class="container">
				<div
					class="d-md-flex justify-content-between align-items-center py-3 text-center text-md-left">
					<!-- copyright text -->
					<div class="copyright-text">
						Â©2019 All Rights Reserved by <a href="#!"> Wizixo.</a>
					</div>
					<!-- copyright links-->
					<div class="copyright-links primary-hover mt-3 mt-md-0">
						<ul class="list-inline">
							<li class="list-inline-item pl-2"><a
								class="list-group-item-action" href="#">Home</a></li>
							<li class="list-inline-item pl-2"><a
								class="list-group-item-action" href="#">About Us</a></li>
							<li class="list-inline-item pl-2"><a
								class="list-group-item-action" href="#">Career</a></li>
							<li class="list-inline-item pl-2"><a
								class="list-group-item-action" href="#">Privacy Policy</a></li>
							<li class="list-inline-item pl-2"><a
								class="list-group-item-action pr-0" href="#">Use of terms</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- =======================
	footer  -->

	<div>
		<a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a>
	</div>

	<!--Global JS-->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/popper.js/umd/popper.min.js"></script>
	<script src="assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Vendors-->
	<script src="assets/vendor/fancybox/js/jquery.fancybox.min.js"></script>
	<script src="assets/vendor/owlcarousel/js/owl.carousel.min.js"></script>
	<script src="assets/vendor/swiper/js/swiper.js"></script>
	<script src="assets/vendor/wow/wow.min.js"></script>

	<!--Template Functions-->
	<script src="assets/js/functions.js"></script>

</body>
</html>