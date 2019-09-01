<%@ page contentType="text/html;charset=UTF-8" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" /><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Expires" content="0" />
<meta name="author" content="http://thinkgem.iteye.com"/><meta http-equiv="X-UA-Compatible" content="IE=7,IE=9,IE=10" />
<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctxStatic}/jquery/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>
<c:if test="${site.theme eq 'basic'}">
	<link href="${ctxStatic}/bootstrap/2.3.1/css_${not empty cookie.theme.value ? cookie.theme.value : 'cerulean'}/bootstrap.min.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lte IE 6]><link href="${ctxStatic}/bootstrap/bsie/css/bootstrap-ie6.min.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStatic}/bootstrap/bsie/js/bootstrap-ie.min.js" type="text/javascript"></script><![endif]-->
	<link href="${ctxStatic}/common/jeesite.min.css" type="text/css" rel="stylesheet" />
	<link href="${ctxStaticTheme}/style.css" type="text/css" rel="stylesheet" />
	<script src="${ctxStaticTheme}/script.js" type="text/javascript"></script>
</c:if>
<c:if test="${site.theme eq 'demo'}">
	<!--flexslider-css-->
	<link href="${ctxStaticTheme}/css/flexslider.css" rel='stylesheet' type='text/css' />
	<!--bootstrap-->
	<link href="${ctxStaticTheme}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!--coustom css-->
	<link href="${ctxStaticTheme}/css/style.css" rel="stylesheet" type="text/css"/>
	<!--fonts-->
	<link href='http://fonts.useso.com/css?family=Coda:400,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Jockey+One' rel='stylesheet' type='text/css'>
	<!--script-->

	<script src="${ctxStaticTheme}/js/modernizr.custom.js"></script>
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="${ctxStaticTheme}/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
			});
		});
	</script>

	<script defer src="${ctxStaticTheme}/js/jquery.flexslider.js"></script>
	<script src="${ctxStaticTheme}/js/jquery.wmuSlider.js"></script>
	<script src="${ctxStaticTheme}/js/jquery.chocolat.js"></script>
	<link rel="stylesheet" href="${ctxStaticTheme}/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
</c:if>

<c:if test="${site.theme eq 'demo2'}">
	<link href="${ctxStaticTheme}/css/style.css" rel="stylesheet" type="text/css"  media="all" />

	<link href="${ctxStaticTheme}/css/slider.css" rel="stylesheet" type="text/css"  media="all" />
	<script src="${ctxStaticTheme}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctxStaticTheme}/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="${ctxStaticTheme}/js/camera.min.js"></script>
	<script type="text/javascript" src="${ctxStaticTheme}/js/jquery.lightbox.js"></script>
	<link rel="stylesheet" type="text/css" href="${ctxStaticTheme}/css/lightbox.css" media="screen">


</c:if>