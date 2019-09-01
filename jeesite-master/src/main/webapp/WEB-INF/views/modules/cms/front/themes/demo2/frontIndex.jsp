<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
    <script type="text/javascript" src="${ctxStaticTheme}/js/camera.min.js"></script>

</head>

<body>

<!--start-image-slider---->
<div class="slider">
    <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
        <div data-src="${ctxStaticTheme}/images/slider3.jpg">  </div>
        <div data-src="${ctxStaticTheme}/images/slider2.jpg">  </div>
        <div data-src="${ctxStaticTheme}/images/slider1.jpg">  </div>
        <div data-src="${ctxStaticTheme}/images/slider2.jpg">  </div>
    </div>
    <div class="clear"> </div>
</div>
<!--End-image-slider---->
<%--<div class="copyrights">Collect from <a href="http://"  title="***">****</a></div>--%>
<!---start-content---->
<div class="content">
    <div class="top-grids">
        <div class="wrap">
            <div class="top-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/icon1.png" title="icon-name" /></a>
                <h3>Bussiness</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                <a class="button" href="#">Read More</a>
            </div>
            <div class="top-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/icon2.png" title="icon-name" /></a>
                <h3>Statistics</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  </p>
                <a class="button" href="#">Read More</a>
            </div>
            <div class="top-grid last-topgrid">
                <a href="#"><img src="${ctxStaticTheme}/images/icon4.png" title="icon-name" /></a>
                <h3>24x7</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                <a class="button" href="#">Read More</a>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <!---start-mid-grids---->
    <div class="mid-grids">
        <div class="wrap">
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider1.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed do eiusmod tempor incididunt ut .</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider2.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed do eiuntre magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider3.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed do eiusmode magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid" id="last">
                <a href="#"><img src="${ctxStaticTheme}/images/slider4.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipi incididunt ut labore et dolore magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider1.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed dolore magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider2.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed labore et dolore magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid">
                <a href="#"><img src="${ctxStaticTheme}/images/slider3.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="mid-grid" id="last1">
                <a href="#"><img src="${ctxStaticTheme}/images/slider4.jpg" title="image-name" /></a>
                <h3>Lorem ipsum</h3>
                <p>consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                <a class="mid-button" href="#">More</a>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <!---End-mid-grids---->

    <!---start-box----->
    <div class="box">
        <div class="wrap">
            <div class="gallery">
                <h3>Gallery</h3>
                <ul>
                    <li><a href="${ctxStaticTheme}/images/slider1.jpg"><img src="${ctxStaticTheme}/images/slider1.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider2.jpg"><img src="${ctxStaticTheme}/images/slider2.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider3.jpg"><img src="${ctxStaticTheme}/images/slider3.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider4.jpg"><img src="${ctxStaticTheme}/images/slider4.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider1.jpg"><img src="${ctxStaticTheme}/images/slider1.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider2.jpg"><img src="${ctxStaticTheme}/images/slider2.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider3.jpg"><img src="${ctxStaticTheme}/images/slider3.jpg" alt=""></a><a href="#"></a></li>
                    <li><a href="${ctxStaticTheme}/images/slider4.jpg"><img src="${ctxStaticTheme}/images/slider4.jpg" alt=""></a><a href="#"></a></li>
                </ul>
            </div>
            <script type="text/javascript" src="${ctxStaticTheme}/js/jquery.lightbox.js"></script>
            <link rel="stylesheet" type="text/css" href="${ctxStaticTheme}/css/lightbox.css" media="screen">
            <script type="text/javascript">
                $(function() {
                    $('.gallery a').lightBox();
                });
            </script>
            <div class="terminals">
                <h3>Testimonials</h3>
                <p>sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                <span><a href="#">- Lorem ipsum</a> USA.</span>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <!---end-box---->
    <!---start-articals------>
    <div class="p-sections">
        <div class="wrap">
            <h3>Popular Sections</h3>
            <ul>
                <li><a href="#">consectetur</a></li>
                <li><a href="#">adipisicing</a></li>
                <li><a href="#">elit, sed do </a></li>
                <li><a href="#">eiusmod tempor</a></li>
                <li><a href="#">consectetur</a></li>
            </ul>
            <ul>
                <li><a href="#">consectetur</a></li>
                <li><a href="#">adipisicing</a></li>
                <li><a href="#">elit, sed do </a></li>
                <li><a href="#">eiusmod tempor</a></li>
                <li><a href="#">consectetur</a></li>
            </ul>
            <ul>
                <li><a href="#">consectetur</a></li>
                <li><a href="#">adipisicing</a></li>
                <li><a href="#">elit, sed do </a></li>
                <li><a href="#">eiusmod tempor</a></li>
                <li><a href="#">consectetur</a></li>
            </ul>
            <ul>
                <li><a href="#">consectetur</a></li>
                <li><a href="#">adipisicing</a></li>
                <li><a href="#">elit, sed do </a></li>
                <li><a href="#">eiusmod tempor</a></li>
                <li><a href="#">consectetur</a></li>
            </ul>
            <ul>
                <li><a href="#">consectetur</a></li>
                <li><a href="#">adipisicing</a></li>
                <li><a href="#">elit, sed do </a></li>
                <li><a href="#">eiusmod tempor</a></li>
                <li><a href="#">consectetur</a></li>
            </ul>
            <div class="clear"> </div>
        </div>
    </div>
    <!---start-articals------>
</div>
</body>
</html>