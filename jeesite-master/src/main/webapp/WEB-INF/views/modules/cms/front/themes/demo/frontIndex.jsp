<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
</head>
<body>
<div class="header-banner">
    <!-- Top Navigation -->
    <div class="container page-seperator">
        <section class="color bgi">
            <h3>Lorem Ipsum Simply A Dummy Text To Format Fonts And Paragraphs.</h3>
            <p>lorem ipsum simply a dummy text to format fonts and paragraphs,consectetuer adipiscing elit, sed diam </p>
            <button type="button" class="btn btn-warning but1">Read more</button>
        </section>
        <section class="col-3 ss-style-doublediagonal our-features">
            <h1>our features</h1>
            <p>lorem ipsum simply a dummy text to format fonts and paragraphs</p>
            <div class="column our-feat">
                <span class="glyphicon glyphicon-road our-icons" aria-hidden="true"></span>
                <h3>Lorem ipsum</h3>
                <p>Lorem Ipsum is simply dummy<br>text of the printing and typesetting </p>
            </div>
            <div class="column our-feat">
                <span class="glyphicon glyphicon-phone our-icons" aria-hidden="true"></span>
                <h3>Lorem ipsum</h3>
                <p>Lorem Ipsum is simply dummy<br> text of the printing and typesetting </p>
            </div>
            <div class="column our-feat">
                <span class="glyphicon glyphicon-scale our-icons" aria-hidden="true"></span>
                <h3>Lorem ipsum</h3>
                <p>Lorem Ipsum is simply dummy<br>text of the printing and typesetting </p>
            </div>
            <div class="clearfix"></div>
        </section>
    </div>
</div>
<div class="our-work" id="our-work">
    <div class="container">
        <h2>our work</h2>
        <p>lorem ipsum simply a dummy text to format fonts and paragraphs</p>
        <div class="gallery-bottom">
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_3.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_1.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_5.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_2.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_4.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="col-md-4 bottom-gallery">
                <a href="${ctxStaticTheme}/images/IMG_6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive" src="${ctxStaticTheme}/images/IMG_6.jpg" />
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-left    b-delay03 ">
                            <span class="txt">Lorem</span>
                            <span class="glyphicon glyphicon-arrow-right gal-icn" aria-hidden="true"></span>
                        </h3>
                    </div>
                </a>
            </div>
            <div class="clearfix"></div>
            <script src="${ctxStaticTheme}/js/jquery.chocolat.js"></script>
            <link rel="stylesheet" href="${ctxStaticTheme}/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
            <!--light-box-files -->
            <script type="text/javascript" charset="utf-8">
                $(function() {
                    $('.bottom-gallery a').Chocolat();
                });
            </script>
        </div>
        <div class="testimonials">
            <h3>Testimonials</h3>
            <p>lorem ipsum simply a dummy text to format fonts and paragraphs</p>
            <div class="test-box">
                <q>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text </q>
                <a href="#" class="left">-Adam</a>
                <div class="clearfix"></div>
                <span><img src="${ctxStaticTheme}/images/half-arrow.png"></span>
            </div>
        </div>
    </div>
</div>
<section class="slider">
    <div class="container">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <div class="banner-info">
                        <h3>Our latest feeds</h3>
                        <h4><span class="m_2">"</span> lorem ipsum simply a dummy text to format fonts and paragraphs<span class="m_2"> "</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent.</p>
                        <h5><a href="#">Adam Chamler ,</a>Dateratr since 2014</h5>
                    </div>
                </li>
                <li>
                    <div class="banner-info">
                        <h3>Our latest feeds</h3>
                        <h4><span class="m_2">"</span> lorem ipsum simply a dummy text to format fonts and paragraphs<span class="m_2"> "</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent.</p>
                        <h5><a href="#">Adam Chamler ,</a>Dateratr since 2014</h5>
                    </div>
                </li>
                <li>
                    <div class="banner-info">
                        <h3>Our latest feeds</h3>
                        <h4><span class="m_2">"</span> lorem ipsum simply a dummy text to format fonts and paragraphs<span class="m_2"> "</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent.</p>
                        <h5><a href="#">Adam Chamler ,</a>Dateratr since 2014</h5>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- FlexSlider -->
    <script defer src="${ctxStaticTheme}/js/jquery.flexslider.js"></script>
    <script type="text/javascript">

        $(window).load(function(){
            $('.flexslider').flexslider({
                animation: "slide",
                start: function(slider){
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
    <!-- FlexSlider -->
</section>
<div class="subscribe-label">
    <div class="container">
        <div class="sub-cont">
            <div class="col-md-6">
                <h3>Subscribe to our newsletter</h3>
            </div>
            <div class="col-md-6">
                <form>
                    <input class="mail" type="text" name="email" value="E mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E mail';}">
                    <button type="button" class="btn btn-warning sub-btn">Notify</button>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="social-feeds">
    <div class="container">
        <div class="wmuSlider example1 section" id="section-1">
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="bottom-slide">
                    <img src="${ctxStaticTheme}/images/twitter.png" alt="" />
                    <p>Great pixel perfect template which suites any needs. Some subheader text goes here.<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, </p>
                </div>
            </article>
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="bottom-slide">
                    <img src="${ctxStaticTheme}/images/twitter.png" alt="" />
                    <p>Suites any needs great pixel perfect template which . Some subheader text goes here.<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, </p>
                </div>
            </article>
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="bottom-slide">
                    <img src="${ctxStaticTheme}/images/twitter.png" alt="" />
                    <p>Template which suites great pixel perfect  any needs. Some subheader text goes here.<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, </p>
                </div>
            </article>
            <ul class="wmuSliderPagination">
                <li><a href="#" class="">0</a></li>
                <li><a href="#" class="">1</a></li>
                <li><a href="#" class="">2</a></li>
            </ul>
        </div>
        <!-- script -->
        <%--<script src="{ctxStaticTheme}/js/jquery.wmuSlider.js"></script>--%>
        <script>
            $('.example1').wmuSlider();
        </script>
        <!-- script -->
    </div>
</div>

</body>
</html>