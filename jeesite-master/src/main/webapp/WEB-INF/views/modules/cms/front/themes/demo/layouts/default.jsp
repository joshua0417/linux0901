<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> -<%-- ${site.title} - Powered By--%> 测评中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
	<!-- Baidu tongji analytics --><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<sitemesh:head/>
</head>
<body>
<div class="header" id="home">
	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">测评中心</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right margin-top cl-effect-2">
					<li class="${not empty isIndex && isIndex ? 'active' : ''}"><a href="${ctx}/index-1${fns:getUrlSuffix()}">
						<span data-hover="首页">${site.id eq '1'?'首页':'返回主站'}</span></a></li>
					<%--<li class="dropdown">
						<a href="about.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-hover="About">About</span><span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="about.html"><span data-hover="Action">Action</span></a></li>
							<li><a href="Pages.html"><span data-hover="Pages">Pages</span></a></li>
						</ul>
					</li>
					<li><a href="404.html"><span data-hover="Blog">Blog</span></a></li>
					<li><a href="gallery.html"><span data-hover="Gallery">Gallery</span></a></li>
					<li><a href="contact.html"><span data-hover="Contact">Contact</span></a></li>--%>
					<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if test="${status.index lt 6}">
						<c:set var="menuCategoryId" value=",${category.id},"/>
						<li class="${requestScope.category.id eq category.id||fn:indexOf(requestScope.category.parentIds,menuCategoryId) ge 1?'active':''}"><a href="${category.url}" target="${category.target}"><span data-hover="${category.name}">${category.name}</span></a></li>
					</c:if></c:forEach>
				</ul>
				<div class="clearfix"></div>
			</div><!-- /.navbar-collapse -->
			<div class="clearfix"></div>
		</div>
		</nav>
	</div>
	<div class="container">
		<div class="content">
			<sitemesh:body/>
		</div>
		<hr style="margin:20px 0 10px;">
	</div> <!-- /container -->

		<footer>
			<%--<div class="footer_nav"><a href="${ctx}/guestbook" target="_blank">公共留言</a> |
				<a href="${ctx}/search" target="_blank">全站搜索</a> | <a href="${ctx}/map-${site.id}${fns:getUrlSuffix()}" target="_blank">站点地图</a> |
				<a href="mailto:thinkgem@163.com">技术支持</a> | <a href="${pageContext.request.contextPath}${fns:getAdminPath()}" target="_blank">后台管理</a></div>
			<div class="pull-right">${fns:getDate('yyyy年MM月dd日 E')}</div><div class="copyright">${site.copyright}</div>--%>
				<div class="footer">
					<div class="container">
						<div class="social">
							<ul>
								<li><a href="#" class="face"></a></li>
								<li><a href="#" class="twit"></a></li>
								<li><a href="#" class="insta"></a></li>
								<li><a href="#" class="gplus"></a></li>
								<li><a href="#" class="dribl"></a></li>
							</ul>
						</div>
						<div class="copy-rt">
							<p>Copyright &copy; 2018.Company name All rights reserved.</p>
						</div>
					</div>
				</div>
				<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
      	</footer>

</body>
</html>