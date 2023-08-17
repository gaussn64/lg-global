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
			<!-- <%@ include file="/global/sustainability/inc/header.jsp" %> -->
			<!-- //header -->

            <!-- CONTENTS -->
			<link href="https://vjs.zencdn.net/8.3.0/video-js.css" rel="stylesheet" />
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
			<link rel="stylesheet" href="../../css/common.css" />
			<link rel="stylesheet" href="../../css/colors.css" />

			<div id="contents">
				<div id="visual-colors" class="visual__top">
					<div class="landing-visual__scrolldown">
						<button type="button" class="landing-visual__scrolldown__btn">Scroll Down</button>
					</div>
					<div class="visual-innner">
						<div class="download_assets">
							<img src="../../img/elements/color/download_assets_gradients.png" alt class="download_assets__thumb"></img>
							<p class="download_assets__title">
								<b>LG gradients</b>
								Download Assets
							</p>
							<a class="download_assets__btn" href="#" download></a>
						</div>
					</div>
				</div>
				<div class="brand__content-inner">
					<div class="brand__header">
						<h2 class="brand__header-title">Brand Colors</h2>
						<p class="brand__header-description">
							At our core, LG has always been a red<br class="mo"> brand. That is still true today. <br>
							However, <br class="mo">we’ve built outwards from our core to give<br class="mo"> our identity flex. <br>
							Incorporating ‘Active<br class="mo"> Red’ and neutral colors so we can <br><br class="mo">
							create excitement and restore balance<br class="mo"> when we need to.
						</p>
					</div>
					<div class="brand-colors__grid">
						<div class="brand-colors__item brand-colors__item--active-red">
							<ul class="brand-colors__code-list">
								<li class="brand-colors__code-data">Active Red</li>
								<li class="brand-colors__code-data">#FD312E</li>
								<li class="brand-colors__code-data">R253 G49 B46</li>
								<li class="brand-colors__code-data">C0 M97 Y95 K0</li>
								<li class="brand-colors__code-data">PMS 2034C</li>
							</ul>
							<a class="btn-copy-hexcode" href="#FD312E">Copy hex code</a>
						</div>
						<div class="brand-colors__item brand-colors__item--heritage-red">
							<ul class="brand-colors__code-list">
								<li class="brand-colors__code-data">Heritage Red</li>
								<li class="brand-colors__code-data">#A50034</li>
								<li class="brand-colors__code-data">R165 G0 B52</li>
								<li class="brand-colors__code-data">C0 M100 Y62 K22</li>
								<li class="brand-colors__code-data">PMS 207C</li>
							</ul>
							<a class="btn-copy-hexcode" href="#FD312E">Copy hex code</a>
						</div>
						<div class="brand-colors__item brand-colors__item--warmgray">
							<ul class="brand-colors__code-list brand-colors__code-list--blk">
								<li class="brand-colors__code-data">Warm Grey</li>
								<li class="brand-colors__code-data">#F0ECE4</li>
							</ul>
							<a class="btn-copy-hexcode btn-copy-hexcode--dark" href="#FD312E">Copy hex code</a>
						</div>
						<div class="brand-colors__item brand-colors__item--white">
							<ul class="brand-colors__code-list brand-colors__code-list--blk">
								<li class="brand-colors__code-data">White</li>
								<li class="brand-colors__code-data">#FFFFFF</li>
							</ul>
							<a class="btn-copy-hexcode btn-copy-hexcode--dark" href="#FD312E">Copy hex code</a>
						</div>
						<div class="brand-colors__item brand-colors__item--black">
							<ul class="brand-colors__code-list">
								<li class="brand-colors__code-data">Black</li>
								<li class="brand-colors__code-data">#000000</li>
							</ul>
							<a class="btn-copy-hexcode" href="#FD312E">Copy hex code</a>
						</div>
					</div>
					<div class="brand__header">
						<h2 class="brand__header-title">Adaptable <br>Color System</h2>
						<p class="brand__header-description">
							We can dial up and down our core palette<br class="mo"> to help express ourselves differently <br><br class="mo">
							across touchpoints – from feeling calm, to<br class="mo"> bold and immersive. <br>
							Our primary colorway<br class="mo"> is highly recognizable and is our most<br class="mo"> used combination.
						</p>
					</div>
					<div class="colour-system">
						<p class="colour-system__title">Colour System <span class="colour-system__index">01</span></p>
						<div class="colour-system__slide-wrap">
							<ul class="colour-system__slider swiper-wrapper">
								<li class="colour-system__slide swiper-slide">
									<div class="colour-system__slide__item colour-system__slide__item--system01"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system02"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system03"></div>
								</li>
								<li class="colour-system__slide swiper-slide">
									<div class="colour-system__slide__item colour-system__slide__item--system04"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system05"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system06"></div>
								</li>
								<li class="colour-system__slide swiper-slide">
									<div class="colour-system__slide__item colour-system__slide__item--system07"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system08"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system09"></div>
								</li>
								<li class="colour-system__slide swiper-slide">
									<div class="colour-system__slide__item colour-system__slide__item--system10"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system11"></div>
									<div class="colour-system__slide__item colour-system__slide__item--system12"></div>
								</li>
							</ul>
						</div>
						<ul class="color-chip" data-color-chart="chart-01">
							<li class="color-chip__item color-chip__item--01"></li>
							<li class="color-chip__item color-chip__item--02"></li>
							<li class="color-chip__item color-chip__item--03"></li>
							<li class="color-chip__item color-chip__item--04"></li>
							<li class="color-chip__item color-chip__item--05"></li>
						</ul>
						<div class="colour-system__slide-controller">
							<button class="colour-system__slide-controller__btn swiper-button-prev"></button>
							<button class="colour-system__slide-controller__btn swiper-button-next"></button>
						</div>
					</div>
					<div class="brand__header">
						<h2 class="brand__header-title">Gradients</h2>
						<p class="brand__header-description">
							When static, we have four gradient assets<br class="mo"> going from light to dark. <br>
							Each has a<br class="mo"> unique look and feel, which can be<br class="mo"> selected<br>
							depending on the context or<br class="mo"> tone.
						</p>
					</div>
					<div class="btmdot-slide__container" data-type-set="light">
						<p class="btmdot-slide__index">Gradient<span>01</span></p>
						<div class="btmdot-slide__slider">
							<ul class="btmdot-slide__slide__inner swiper-wrapper">
								<li class="btmdot-slide__slide btmdot-slide__slide--light swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--light-dark swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--dark-light swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--dark swiper-slide"></li>
							</ul>
						</div>
						<div class="btmdot-slide__btm-container">
							<div class="btmdot-slide__pagination"></div>
							<span class="btmdot__tag">Light Mode Usage Only</span>
						</div>
					</div>
				</div>
				<div class="brand-elements">
					<div class="brand-element__inner" >
						<h2 class="brand-elements__header-title">
							What’s next?
							<span class="brand-elements__header-title__sub">Explore brand elements</span>
						</h2>
						<div class="brand-elements__controller">
							<button class="brand-elements__controller__btn swiper-button-prev"></button>
							<button class="brand-elements__controller__btn swiper-button-next"></button>
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
			<script src="https://vjs.zencdn.net/8.3.0/video.min.js"></script>
			<script src="../../js/layout.js"></script>
			<script src="../../js/colors.js"></script>
            <!-- /CONTENTS -->
            <!-- footer -->
            <!-- <%@ include file="/global/sustainability/inc/footer.jsp" %> -->
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