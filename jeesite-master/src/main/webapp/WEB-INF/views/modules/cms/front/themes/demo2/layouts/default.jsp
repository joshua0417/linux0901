<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> - ${site.title} - Powered By JeeSite</title>
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
	<!-- Baidu tongji analytics --><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<sitemesh:head/>
	<link href="${ctxStaticTheme}/css/style.css" rel="stylesheet" type="text/css"  media="all" />

	<link href="${ctxStaticTheme}/css/slider.css" rel="stylesheet" type="text/css"  media="all" />
	<script src="${ctxStaticTheme}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctxStaticTheme}/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="${ctxStaticTheme}/js/camera.min.js"></script>
	<script type="text/javascript">
		jQuery(function(){
			jQuery('#camera_wrap_1').camera({
				height: '500px',
				pagination: false
			});
		});
	</script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
<!----start-wrap---->
<div class="wrap">
	<!---start-header---->
	<div class="top-links" id="top">
		<div class="social-icons">
			<ul>
				<li><a class="facebook" href="#" target="_blank"> </a></li>
				<li><a class="twitter" href="#" target="_blank"></a></li>
				<li><a class="googleplus" href="#" target="_blank"></a></li>
				<li><a class="pinterest" href="#" target="_blank"></a></li>
				<li><a class="dribbble" href="#" target="_blank"></a></li>
				<li><a class="vimeo" href="#" target="_blank"></a></li>
			</ul>
		</div>
		<div class="clear"> </div>
	</div>
</div>
<div class="header">
	<div class="wrap">
		<div class="logo">
			<a href="index.html"><img src="${ctxStaticTheme}/images/logo.png" title="logo" /></a>
		</div>
		<div class="top-nav">
			<ul>
				<li class="${not empty isIndex && isIndex ? 'active' : ''}">
					<a href="${ctx}/index-1${fns:getUrlSuffix()}"><span data-hover="Home">${site.id eq '1'?'首　 页':'返回主站'}</span></a></li>
				<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if test="${status.index lt 6}">
					<c:set var="menuCategoryId" value=",${category.id},"/>
					<li class="${requestScope.category.id eq category.id||fn:indexOf(requestScope.category.parentIds,menuCategoryId) ge 1?'active':''}"><a href="${category.url}" target="${category.target}"><span>${category.name}</span></a></li>
				</c:if></c:forEach>
				<div class="clear"> </div>
			</ul>
		</div>
		<div class="clear"> </div>
	</div>

	<!---End-header---->
	</div>
		<div class="content">
			<sitemesh:body/>
		</div>

		<hr style="margin:20px 0 10px;">

	<!---start-footer---->
	<div class="footer">
		<div class="wrap">
			<div class="footer-grid">
				<h3>COMPANY</h3>
				<ul>
					<li><a href="#">ABOUT US</a></li>
					<li><a href="#">CLIENTS</a></li>
					<li><a href="#">PRESENTATION</a></li>
					<li><a href="#">SUPPORT</a></li>
					<li><a href="#">SCHEDULE</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>OVERVIEW</h3>
				<ul>
					<li><a href="#">WHAT WE DO</a></li>
					<li><a href="#">NEWS</a></li>
					<li><a href="#">IT SOLUTIONS</a></li>
					<li><a href="#">SUPPORT</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>FOR CLIENTS</h3>
				<ul>
					<li><a href="#">FORUMS</a></li>
					<li><a href="#">CLIENTS</a></li>
					<li><a href="#">PROMOTIONS</a></li>
					<li><a href="#">SIGN IN</a></li>
					<li><a href="#">SCHEDULE</a></li>
				</ul>
			</div>
			<div class="footer-grid">
				<h3>ARCHIVE</h3>
				<ul>
					<li><a href="#">JAN 2019</a></li>
					<li><a href="#">FEB 2019</a></li>
					<li><a href="#">MAR 2019</a></li>
					<li><a href="#">APR 2019</a></li>
					<li><a href="#">MAY 2019</a></li>
				</ul>
			</div>
			<div class="clear"> </div>
		</div>
	</div>
	<!---End-footer---->
	<!---start-copy-right----->
	<div class="copy-right">
		<div class="top-to-page">
			<a href="#top" class="scroll"> </a>
			<div class="clear"> </div>
		</div>
		<p>Design by MOMO .More Templates <a href="" target="_blank" title="******">******</a> -

			Collect from <a href="" title="*****" target="_blank">******</a></p>
	</div>
	<!---End-copy-right---->
	<!----End-wrap---->

</body>
</html>