<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/gp/common/include/head/head.jsp" %>
<html lang="en" data-countrycode="global">

<head>
	<%@ include file="/WEB-INF/jsp/gp/common/include/head/meta-default-tag.jsp" %>
	<!-- sns tag -->
	<%@ include file="/WEB-INF/jsp/gp/common/include/head/meta-sns-tag.jsp" %>
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="robots" content="NOODP, NOYDIR" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" /> -->

	
	<title>LG Sustainability Global</title>
	<meta name="description" content="Our customer service and innovative quality bring a smile to many. We continue to explore sustainability to make the smile last with a better life for people, and a better future for the Earth." />
	<meta name="keywords" content="sustainability, planet, environmental, people, social, impact, reports" />
	<meta property="og:locale" content="en_GLOBAL" />
	<meta property="og:site_name" content="LG Sustainability Global" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="LG Sustainability Global" />
	<meta property="og:url" content="https://www.lg.com/global/sustainability" />
	<meta property="og:description" content="Our customer service and innovative quality bring a smile to many. We continue to explore sustainability to make the smile last with a better life for people, and a better future for the Earth." />
	<meta property="og:image" content="https://www.lg.com/global/sustainability/img/og/lg-sustainability-og.jpg" />

	<jsp:include page="/WEB-INF/jsp/gp/common/include/head/head-css.jsp" />
	<jsp:include page="/WEB-INF/jsp/gp/common/include/head/font-woff.jsp" />
	<!-- // default code -->

	<jsp:include page="/WEB-INF/jsp/gp/common/include/head/mic-head-script.jsp" />
	<jsp:include page="/WEB-INF/jsp/gp/common/include/head/gateway-foresee.jsp" />

	
	<link rel="stylesheet" href="/global/sustainability/css/default.min.css" />
	<link rel="stylesheet" href="/global/sustainability/css/swiper-bundle.min.css" />				
	<!--[if lt IE 9]>
	<script src="/global/sustainability/js/html5shiv.js"></script>
	<![endif]-->

	<!-- Favicon -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/152x152.png" sizes="152x152" /> <!-- iPad retina touch icon (iOS7) -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/144x144.png" sizes="144x144" /> <!-- iPad retina touch icon (iOS6) -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/120x120.png" sizes="120x120" /> <!-- iPhone retina touch icon (iOS7) -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/114x114.png" sizes="114x114" /> <!-- iPhone retina touch icon (iOS6) -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/72x72.png" sizes="72x72" /> <!-- 1st/2nd gen iPads -->
	<link rel="apple-touch-icon-precomposed" href="/global/sustainability/img/favicons/57x57.png" /> <!-- web browsers that support png favicon -->
	<link rel="icon" type="image/png" href="/global/sustainability/img/favicons/228x228.png" sizes="228x228" /> <!-- Opera Coast icon -->
	<link rel="icon" type="image/png" href="/global/sustainability/img/favicons/195x195.png" sizes="195x195" /> <!-- Opera Speed Dial icon -->
	<link rel="icon" type="image/png" href="/global/sustainability/img/favicons/128x128.png" sizes="128x128" /> <!-- Chrome Web Store icon -->
	<link rel="icon" type="image/png" href="/global/sustainability/img/favicons/96x96.png" sizes="96x96" /> <!-- GoogleTV icon -->
	<link rel="icon" type="image/png" href="/global/sustainability/img/favicons/32x32.png" sizes="32x32" /> <!-- web browsers that support png favicon -->
	<link rel="shortcut icon" href="/global/sustainability/img/favicons/favicon.ico" />

	

	<!-- Google Tag Manager -->
	<script>(function (w, d, s, l, i) {
			w[l] = w[l] || []; w[l].push({
				'gtm.start':
					new Date().getTime(), event: 'gtm.js'
			}); var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
					'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-M8RZMPH');</script>
	<!-- End Google Tag Manager -->

	<style>
		.container-fluid{padding-right:0px !important; padding-left:0px !important;}
		header.navigation.b2c {display:none;}
		.cookie-eu-get-height {display:none;}
		.skip_nav {display:none;}
	</style>
</head>

<body class="top">
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M8RZMPH" height="0" width="0" style="display:none;visibility:hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
	<jsp:include page="/WEB-INF/jsp/gp/common/include/body/body-noscript.jsp" />
	<jsp:include page="/WEB-INF/jsp/gp/common/include/body/google-tag-manager.jsp" />
	<jsp:include page="/WEB-INF/jsp/gp/common/include/body/broswe-check-popup-layer.jsp" />

	<c:set var='bizType' value='${$bizType }' />
	<c:set var='siteType' value='MKT' />
	<!-- component (navigation) -->
	<c:import url="/${localeCd }/gnb">
		<c:param name="bizType" value="${bizType}" />
		<c:param name="siteType" value="${siteType}" />
		<c:param name="isMobile" value="${isMobile}" />
	</c:import>
	<!-- // component (navigation) -->

	<script>
		_dl = {}
	</script>


	<div class="brand-contents">
		<div id="container">
			<div id="skip_menu">
				<a href="#contents">Skip to main content</a>
				<a href="#footer">Skip to  footer</a>
			</div>

			<!-- header -->
			<%@ include file="/global/sustainability/inc/header.jsp" %>
			<!-- //header -->

            <!-- CONTENTS -->
	
            <script>
                var gnbDep1 = 0;		//GNB 1depth
            </script>
			<link href="https://vjs.zencdn.net/8.3.0/video-js.css" rel="stylesheet" />
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
			<link rel="stylesheet" href="../css/fontface.css" />
			<link rel="stylesheet" href="../css/layout.css" />
			<link rel="stylesheet" href="../css/philosophy.css" />

			<div id="contents">
				<div id="brand-container">
					<div class="brand-visual-film visual__top">
						<picture class="brand-visual-film__video">
							<source media="(min-width: 769px)" srcset="../img/philosophy/Expressive_symbol_wink_d.png">
							<source media="(max-width: 768px)" srcset="../img/philosophy/Expressive_symbol_wink_m.png">
							<img src="../img/philosophy/Expressive_symbol_wink_d.png" alt="">
						</picture>
		
						<button class="btn-play"></button>
						<div class="landing-visual__scrolldown">
							<button type="button" class="landing-visual__scrolldown__btn">Scroll Down</button>
						</div>
					</div>
					<div class="brand-story-content">
						<p class="intro-text">
							LG Electronics has been designing every side of life for <br>
							generations. Bringing a smile to technology. Balancing <br>
							warmth and innovations. Everything we design is <br>
							guided by our Design Philosophy.
						</p>

						<div class="imotionally-design addMotion">
							<div class="imotionally-design__headline">
								<ul>
									<li class="active">
										Emotionally
										<p><span>We bring warmth</span></p>
									</li>
									<li>
										Intelligent
										<p><span>and innovation</span></p>
									</li>
									<li>
										Design
										<p><span>to all we design</span></p>
									</li>
								</ul>
								<p class="for-mobile">
									We bring warmth and innovation to<br> 
									everything we design.
								</p>
							</div>
							<ul class="imotionally-design__imgwrap">
								<li class="imotionally-design__item">
									<video muted playsinline loop autoplay><source src="../img/philosophy/emotionally_intelligent_item_01.mp4" type="video/mp4"/></video>
								</li>
								<li class="imotionally-design__item">
									<video muted playsinline loop autoplay><source src="../img/philosophy/emotionally_intelligent_item_02.mp4" type="video/mp4"/></video>
								</li>
								<li class="imotionally-design__item">
									<img src="../img/philosophy/emotionally_intelligent_item_03.png" alt="">
								</li>
								<li class="imotionally-design__item">
									<video muted playsinline loop autoplay><source src="../img/philosophy/emotionally_intelligent_item_04.mp4" type="video/mp4"/></video>
								</li>
								<li class="imotionally-design__item">
									<video muted playsinline loop autoplay><source src="../img/philosophy/emotionally_intelligent_item_05.mp4" type="video/mp4"/></video>
								</li>
								<li class="imotionally-design__item">
									<video muted playsinline loop autoplay><source src="../img/philosophy/emotionally_intelligent_item_06.mp4" type="video/mp4"/></video>
								</li>
							</ul>
						</div>
						<p class="intro-text">
							Moving forward, we want to ensure that our approach to design <br>
							blends logic and magic. That our identity is guided by a clear<br>
							philosophy. And ultimately, that our execution delivers on our <br>
							mission and core values.
						</p>
						<div class="looping-video-content">
							<video muted playsinline loop autoplay>
								<source src="../img/philosophy/looping-video-content.mp4" type="video/mp4">
							</video>
						</div>
						<p class="intro-text">
							So we’ve developed a design philosophy that guides all our <br>
							design decisions. It means every experience we create can <br>
							help people feel Life’s Good.
						</p>
						<ul class="looping-video-multi">
							<li><video muted playsinline loop autoplay><source src="../img/philosophy/looping-video-multi-01.mp4" type="video/mp4"></source></video></li>
							<li><img src="../img/philosophy/looping-video-multi-02.png" alt=""></li>
							<li><video muted playsinline loop autoplay><source src="../img/philosophy/looping-video-multi-03.mp4" type="video/mp4"></source></video></li>
						</ul>
					</div>
					<div class="brand-elements">
						<div class="brand-element__inner" >
							<div class="brand-element__title">
								<span class="brand-element__title__desc">Our core elements</span>
								<h1 class="brand-element__title__text">Coming to life <br class="mo"> through our identity</h1>
							</div>
							<div class="our-identity__slider">
								<ul class="our-identity__slides swiper-wrapper">
									<li class="our-identity__slide our-identity__slide--logo swiper-slide">
										<h3 class="our-identity__item-title">Logo</h3>
										<a class="our-identity__move-btn" href="../logo/logo.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--color swiper-slide">
										<h3 class="our-identity__item-title">Color & Gradients</h3>
										<a class="our-identity__move-btn" href="../color/colors.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--photography swiper-slide">
										<h3 class="our-identity__item-title">Photography</h3>
										<a class="our-identity__move-btn" href="../photography/photography.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--design swiper-slide">
										<h3 class="our-identity__item-title">Design System</h3>
										<a class="our-identity__move-btn" href="../design-system/design-system.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--tagline swiper-slide">
										<h3 class="our-identity__item-title">Slogan</h3>
										<a class="our-identity__move-btn" href="../slogan/slogan.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--typo swiper-slide">
										<h3 class="our-identity__item-title">Typography</h3>
										<a class="our-identity__move-btn" href="../typography/typography.html"></a>
									</li>
									<li class="our-identity__slide our-identity__slide--voice swiper-slide">
										<h3 class="our-identity__item-title">Voice</h3>
										<a class="our-identity__move-btn" href="../voice/voice.html"></a>
									</li>
								</ul>
							</div>
							<div class="our-identity__progress-container">
								<div class="our-identity__progressbar"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="popup-in-action">
				<button class="btn-circle btn-circle--close"></button>
				<div class="pop-inner">
					<div class="video-wrapper">
						<video id="video-item" controls class="vjs-matrix video-js" preload="auto">
							<source src="../../mocks/BS0008/20230406_LG_BrandfilmMaster_88.mp4" type="video/mp4">
						</video>
					</div>
				</div>
			</div>
			<script src="https://vjs.zencdn.net/8.3.0/video.min.js"></script>
			<script src="../js/layout.js"></script>
			<script src="../js/philosophy.js"></script>
            <!-- /CONTENTS -->
            <!-- footer -->
            <%@ include file="/global/sustainability/inc/footer.jsp" %>
            <!-- //footer -->
	    </div>
	</div>
	<jsp:include page="/WEB-INF/jsp/gp/common/include/body/top.jsp" />
	<!-- // top button -->

	<!-- default code -->
	<jsp:include page="/WEB-INF/jsp/gp/common/include/tail/tail-script-default.jsp" />

	
	<script src="/global/sustainability/js/gsap.min.js"></script>
	<script src="/global/sustainability/js/ScrollTrigger.min.js"></script>
	<script src="/global/sustainability/js/ScrollMagic.min.js"></script>
	<script src="/global/sustainability/js/debug.addIndicators.min.js"></script>
	<script src="/global/sustainability/js/animation.gsap.min.js"></script>
	<script src="/global/sustainability/js/swiper-bundle.min.js"></script>
	<script src="/global/sustainability/js/design.min.js"></script>
	<script src="/global/sustainability/js/main.min.js"></script>


	<script>
		
		$(function (){
			$("header.navigation.b2c").remove();
		})
		</script>
</body>
</html>