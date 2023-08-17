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
			<link rel="stylesheet" href="../../css/common.css" />
			<link rel="stylesheet" href="../../css/logo.css" />

			<div id="contents">
				<div id="visual-logo" class="visual__top">
					<div class="landing-visual__scrolldown">
						<button type="button" class="landing-visual__scrolldown__btn">Scroll Down</button>
					</div>
					<div class="visual-innner">
						<div class="download_assets">
							<img src="../../img/elements/logo/download_assets_logo.png" alt class="download_assets__thumb"></img>
							<p class="download_assets__title">
								<b>LG Logo</b>
								Download Assets
							</p>
							<a class="download_assets__btn" href="#" download></a>
						</div>
					</div>
				</div>
				<div class="brand__content-inner">
					<div class="brand__header">
						<h2 class="brand__header-title">Introducing our Logo</h2>
						<p class="brand__header-description">
							Full of personality, our smiling logo signals humanity <br class="mo">
							and intelligence. <br>We always use it with confidence. <br class="mo">
							It's what makes us feel uniquely LG.
						</p>
					</div>
					<div class="percent-v-box">
						<picture>
							<source media="(min-width: 769px)" srcset="../../img/elements/logo/brand-elements-logo-primary-d.svg">
							<source media="(max-width: 768px)" srcset="../../img/elements/logo/brand-elements-logo-primary-m.svg">
							<img src="../../img/elements/logo/brand-elements-logo-primary-d.svg" alt="">
						</picture>
						<div class="v-box-bottom">
							<p class="tit">Primary Logo</p>
							<span class="desc">For instant recognition</span>
						</div>
					</div>
					<div class="brand__header">
						<h2 class="brand__header-title">Logo color</h2>
						<p class="brand__header-description">
							We have a number of color variants of our logo <br class="mo">
							lockup. These combinations <br>ensure we can use them <br class="mo">
							against our gradients, photographic backgrounds <br class="mo">
							and flat <br>colors without compromising legibility.
						</p>
					</div>
					<div class="btmdot-slide__container" data-type-set="light">
						<div class="btmdot-slide__slider">
							<ul class="btmdot-slide__slide__inner swiper-wrapper">
								<li class="btmdot-slide__slide btmdot-slide__slide--light swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--dark swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--light-gra swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--dark-gra swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--light-img swiper-slide"></li>
								<li class="btmdot-slide__slide btmdot-slide__slide--dark-img swiper-slide"></li>
							</ul>
						</div>
						<div class="btmdot-slide__btm-container">
							<div class="btmdot-slide__pagination">
								<!-- <button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--dark"></button>
								<button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--light"></button>
								<button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--light-gra"></button>
								<button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--dark-gra"></button>
								<button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--dark-img"></button>
								<button class="btmdot-slide__pagination__btn btmdot-slide__pagination__btn--light-img"></button> -->
							</div>
							<span class="btmdot__tag">Light Background</span>
						</div>
					</div>
					<div class="brand__header">
						<h2 class="brand__header-title">Logo spacing <br>and partnerships</h2>
						<p class="brand__header-description">
							When using our logo, follow the guidance for clear space so that it always <br>
							appears confident and legible. When using it alongside another logo, please <br>
							refer to our partnership template to ensure equal balance of both logo’s.
						</p>
					</div>
					<div class="tab-menu__container">
						<div class="tab-menu__list" data-tab="partnership">
							<span class="tab-menu__bg"></span>
							<a href="#clearspace" class="tab-menu__btn tab-menu__btn--active">Clearspace</a>
							<a href="#partnerships" class="tab-menu__btn">Brand partnerships</a>
						</div>
					</div>
					<div class="tab-container" data-tab="partnership">
						<div id="clearspace" class="tab-container__content tab-container__content--active">
							<div class="logo__container logo__container--spacing">
								<img class="logo__container__spacing-img logo__container__spacing-img--pc" src="../../img/elements/logo/brand-elements-logo-spacing-clearspace-d.png" alt="">
								<img class="logo__container__spacing-img logo__container__spacing-img--mo" src="../../img/elements/logo/brand-elements-logo-spacing-clearspace-m.png" alt="">
							</div>
						</div>
						<div id="partnerships" class="tab-container__content">
							<div class="logo__container logo__container--spacing">
								<img class="logo__container__spacing-img logo__container__spacing-img--pc" src="../../img/elements/logo/brand-elements-logo-spacing-brand-partnerships-d.png" alt="">
								<img class="logo__container__spacing-img logo__container__spacing-img--mo" src="../../img/elements/logo/brand-elements-logo-spacing-brand-partnerships-m.png" alt="">
							</div>
						</div>
					</div>
					<div class="brand__header">
						<h2 class="brand__header-title">Digital Logo Play</h2>
						<p class="brand__header-description">
							This is our symbol brought to life with emotion and interaction.  <br>
							It moves with a warm and witty attitude, is designed for the future <br>
							and adapts to consumers' moods and needs.
						</p>
					</div>
					<div class="tab-menu__container">
						<div class="tab-menu__list" data-tab="logoPlay">
							<span class="tab-menu__bg"></span>
							<a href="#logoplay" class="tab-menu__btn tab-menu__btn--active">Digital logo play</a>
							<a href="#logosuite" class="tab-menu__btn">Digital logo play Suite</a>
						</div>
					</div>
					<div class="tab-container" data-tab="logoPlay">
						<div id="logoplay" class="tab-container__content tab-container__content--active">
							<div class="logo__container logo__container--logoplay">
								<img class="logo__container__logoplay-image" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol-d.gif" alt="">
								<div class="v-box-bottom wt">
									<p class="tit">Digital Logo Play</p>
									<span class="desc">Allows us to engage and tell stories</span>
								</div>
							</div>
						</div>
						<div id="logosuite" class="tab-container__content">
							<div class="logo__container logo__container--logosuite">
								<ul class="logosuite">
									<li class="logosuite__item">
										<p class="logosuite__label">Appearing</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Appearing.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Bobbing to music</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_BobtoMusic.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Bowing</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Bowing.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Look around</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_LookingAround.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Amazed</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Amazed.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Spinning</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Scrolling.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Nodding</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Nodding.gif" alt="">
									</li>
									<li class="logosuite__item">
										<p class="logosuite__label">Wink</p>
										<img class="logosuite__img" src="../../img/elements/logo/LG_Electronics_Expressive_Symbol_Transparent_White_Wink.gif" alt="">
									</li>
								</ul>
							</div>
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