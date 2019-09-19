<%--
  Created by IntelliJ IDEA.
  User: ztc
  Date: 2019/9/11
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <style>
        #times{
            color: red;
        }
    </style>
</head>
<body class="animsition animsition">
<div class="home-1" id="page">
    <nav id="menu">
        <ul>
            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
            <li><a href="/selectList/seleAllShopList?currentPage=1">商品列表</a></li>
            <li><a href="../wish-list.html">愿望清单</a></li>
            <li><a href="../shop-cart.html">购物车</a></li>
            <li><a href="../check-out.html">结算</a></li>
        </ul>
    </nav>
    <header class="header-style-1">
        <div class="container">
            <div class="row">
                <div class="header-1-inner">
                    <a class="brand-logo animsition-link" href="../index.html">
                        <img class="img-responsive" src="../images/logo.png" alt="" />
                    </a>
                    <nav>
                        <ul class="menu hidden-xs">
                            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
                            <li><a href="/selectList/seleAllShopList?currentPage=1">商品列表</a></li>
                            <li><a href="../wish-list.html">愿望清单</a></li>
                            <li><a href="../shop-cart.html">购物车</a></li>
                            <li><a href="../check-out.html">结算</a></li>
                        </ul>
                    </nav>
                    <aside class="right">
                        <div class="widget widget-control-header">
                            <div class="select-custom-wrapper">

                            </div>
                        </div>
                        <div class="widget widget-control-header widget-search-header">
                            <a class="control btn-open-search-form js-open-search-form-header" href="#">
                                <span class="lnr lnr-magnifier"></span>
                            </a>
                            <div class="form-outer">
                                <button class="btn-close-form-search-header js-close-search-form-header">
                                    <span class="lnr lnr-cross"></span>
                                </button>
                                <form>
                                    <input placeholder="Search" />
                                    <button class="search">
                                        <span class="lnr lnr-magnifier"></span>
                                    </button>
                                </form>
                            </div>
                        </div>
                        <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
                            <a class="control" href="../shop-cart.html">
                                <p class="counter">0</p>
                                <span class="lnr lnr-cart"></span>
                            </a>
                        </div>
                        <div class="widget widget-control-header hidden-lg hidden-md hidden-sm">
                            <a class="navbar-toggle js-offcanvas-has-events" type="button" href="#menu">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </header>
    <div class="banner banner-image-fit-screen">
        <div class="rev_slider slider-home-1" id="slider_1">
            <ul>
                <li>
                    <img class="rev-slidebg" src="../images/slider/1.jpg" alt="demo" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" >
                </li>
            </ul>
        </div>
    </div>
    <section class="boxed-sm">
        <div class="container">
            <div class="row">
                <div class="product-category-grid-style-1">
                    <div class="row">
                        <div class="col-sm-4">
                            <a href="#">
                                <figure class="product-category-item">
                                    <div class="thumbnail">
                                        <img src="../images/category-product/1.jpg" alt=""/>
                                    </div>
                                    <figcaption>
                                        <h3>Vegetable</h3>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4">
                            <a href="#">
                                <figure class="product-category-item">
                                    <div class="thumbnail">
                                        <img src="../images/category-product/2.jpg" alt="" />
                                    </div>
                                    <figcaption>
                                        <h3>Fruit</h3>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-sm-4">
                            <a href="#">
                                <figure class="product-category-item">
                                    <div class="thumbnail">
                                        <img src="../images/category-product/3.jpg" alt="" />
                                    </div>
                                    <figcaption>
                                        <h3>Meat</h3>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="boxed-sm">
        <div class="container">
            <div class="heading-wrapper text-center">
                <h3 class="heading danger" corlor="red" id="times"></h3>
            </div>
            <div class="row">
                <div class="row js-product-masonry-layout-1 product-masonry-layout-1">
                    <div class="grid-sizer"></div>


                    <c:forEach items="${maim_product.data}" var="page" varStatus="status">
                        <c:choose>
                            <c:when test="${status.index == 0}">
                                <figure class="item item-size-2">
                                    <div class="product product-style-2">
                                        <div class="img-wrapper">
                                            <a href="#">
                                                <img class="img-responsive" src="${page.src}" alt="product thumbnail" />
                                            </a>
                                            <div class="product-control-wrapper bottom-right">
                                                <div class="wrapper-control-item">
                                                    <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product" onclick="view('${page.name}','${page.price}','${page.src}','${page.describe}')">
                                                        <span class="lnr lnr-eye"></span>
                                                    </a>
                                                </div>
                                                <div class="wrapper-control-item item-wish-list">
                                                    <a class="js-wish-list js-notify-add-wish-list" href="#">
                                                        <span class="lnr lnr-heart"></span>
                                                    </a>
                                                </div>
                                                <div class="wrapper-control-item item-add-cart js-action-add-cart">
                                                    <a class="animate-icon-cart" href="#">
                                                        <span class="lnr lnr-cart"></span>
                                                    </a>
                                                    <svg x="0px" y="0px" width="36px" height="32px" viewbox="0 0 36 32">
                                                        <path stroke-dasharray="19.79 19.79" fill="none" ,="," stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                                                    </svg>
                                                </div>
                                            </div>
                                            <figcaption class="desc">
                                                <h3>
                                                    <a class="product-name" href="#">${page.name}</a>
                                                </h3>
                                                <span class="price">￥<del>${page.price}</del>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber type="number" value="${page.price*0.7} " maxFractionDigits="2" /></span>
                                            </figcaption>
                                        </div>
                                    </div>
                                </figure>
                            </c:when>

                        <c:otherwise>
                            <figure class="item">
                                <div class="product product-style-2" >
                                    <div class="img-wrapper" >
                                        <a href="#">
                                            <img class="img-responsive" src="${page.src}" alt="product thumbnail" h/>
                                        </a>
                                        <div class="product-control-wrapper bottom-right">
                                            <div class="wrapper-control-item">
                                                <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product" onclick="view('${page.name}','${page.price}','${page.src}','${page.describe}')">
                                                    <span class="lnr lnr-eye"></span>
                                                </a>
                                            </div>
                                            <div class="wrapper-control-item item-wish-list">
                                                <a class="js-wish-list js-notify-add-wish-list" href="#">
                                                    <span class="lnr lnr-heart"></span>
                                                </a>
                                            </div>
                                            <div class="wrapper-control-item item-add-cart js-action-add-cart">
                                                <a class="animate-icon-cart" href="#">
                                                    <span class="lnr lnr-cart"></span>
                                                </a>
                                                <svg x="0px" y="0px" width="36px" height="32px" viewbox="0 0 36 32">
                                                    <path stroke-dasharray="19.79 19.79" fill="none" ,="," stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <figcaption class="desc">
                                            <h3>
                                                <a class="product-name" href="#">￥${page.name}</a>
                                            </h3>
                                            <span class="price"><del>￥${page.price}</del>&nbsp;&nbsp;&nbsp; <fmt:formatNumber type="number" value="${page.price*0.7} " maxFractionDigits="2" /> </span>
                                        </figcaption>
                                    </div>
                                </div>
                            </figure>
                        </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <div class="call-to-action-style-1">
        <img class="rellax bg-overlay" src="../images/call-to-action/1.jpg" alt="" />
        <div class="overlay-call-to-action"></div>
        <div class="container">
            <div class="row">
                <p class="h3">Organic Food</p>
                <h2>Healthy - Fresh - Delicious.</h2>
                <P CLASS="btn btn-brand pill">为你的生活增加一点绿色</P>
            </div>
        </div>
    </div>
    <section class="boxed-sm">
        <div class="container">
            <div class="heading-wrapper text-center">
                <h3 class="heading">The Blog</h3>
            </div>
            <div class="row">
                <div class="row blog-h reverse flex one-row multi-row-sm">
                    <div class="col-md-4">
                        <div class="post">
                            <div class="img-wrapper js-set-bg-blog-thumb">
                                <a href="#">
                                    <img src="../images/blog/01.jpg" alt="Image" />
                                </a>
                            </div>
                            <div class="desc">
                                <h4>
                                    <a href="#">Beauty With Organic Products</a>
                                </h4>
                                <p class="meta">
                                    <span class="time">Feberuary 05, 2017</span>
                                    <span class="comment">2</span>
                                </p>
                                <p>Etiam at varius diam, id blandit erat. Suspendisse eget volutpat risus, id venenatis justo. Fusce elementum ligula elit. Duis ultricies ultrices nibh, a tincidunt risus pretium eleifend. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="post">
                            <div class="img-wrapper js-set-bg-blog-thumb">
                                <a href="#">
                                    <img src="../images/blog/02.jpg" alt="Image" />
                                </a>
                            </div>
                            <div class="desc">
                                <h4>
                                    <a href="#">Green Vegetables Are Good For Healthy</a>
                                </h4>
                                <p class="meta">
                                    <span class="time">January 30, 2017</span>
                                    <span class="comment">0</span>
                                </p>
                                <p>Vivamus consectetur nulla mattis lorem ultricies, ac congue tellus consectetur. Vivamus sed purus volutpat, varius mauris id, tempus augue. Nuefd ans congue liquam.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="post">
                            <div class="img-wrapper js-set-bg-blog-thumb">
                                <a href="#">
                                    <img src="../images/blog/03.jpg" alt="Image" />
                                </a>
                            </div>
                            <div class="desc">
                                <h4>
                                    <a href="#">Refreshing Green Smoothie Recipe</a>
                                </h4>
                                <p class="meta">
                                    <span class="time">January 20, 2017</span>
                                    <span class="comment">4</span>
                                </p>
                                <p>Praesent efficitur felis eu luctus vestibulum. In hac habitasse platea dictumst. Nam egestas eu nisl ac pellentesque. Duis congue suscipit lorem vel congue. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
                </div>
            </div>
        </div>
    </div>
    <div class="copy-right style-1">
        <div class="container">
            <div class="row">
                <div class="copy-right-inner">
                    <p>蔬菜大多都是生长在土里的。也有的是在藤上挂着的。蔬菜在灿烂的阳光下,能长得更好。</p>
                    <div class="widget widget-footer widget-footer-creadit-card">

                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


<div class="modal fade" id="quick-view-product" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg modal-quickview woocommerce" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-md-6" vertical-align="middle">
                        <div class="woocommerce-product-gallery">
                            <div>
                                <p>com.alibaba.druid.pool.DruidDataSource  2019-09-18 07:29:03 ERROR DruidDataSource : testWhileIdle is true, validationQuery not set  795
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                </p>
                                <p>
                                    <br/>
                                </p>
                            </div>
                            <div class="main-carousel-product-quick-view">
                                <div>
                                    <img id="src" class="img-responsive" src="${pagelist.data[0].src}" alt="product thumbnail" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="summary">
                            <div class="desc">
                                <div class="header-desc">
                                    <h2 id="pname" class="product-title">${pagelist.data[0].name}</h2>
                                    <p id="price" class="price">${pagelist.data[0].price}</p>
                                </div>
                                <div class="body-desc">
                                    <div class="woocommerce-product-details-short-description">
                                        <p id="product_d">
                                            ${pagelist.data[0].describe}
                                        </p>
                                    </div>
                                </div>
                                <div class="footer-desc">
                                    <form class="cart">
                                        <div class="quantity buttons-added">
                                            <input class="minus" value="-" type="button" />
                                            <input class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number" />
                                            <input class="plus" value="+" type="button" />
                                        </div>
                                        <div class="group-btn-control-wrapper">
                                            <button class="btn btn-brand no-radius">ADD TO CART</button>
                                            <button class="btn btn-wishlist btn-brand-ghost no-radius">
                                                <i class="fa fa-heart"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="product-meta">
                                <p class="posted-in">Categories:
                                    <span class='cl'>Food</span>
                                </p>
                                <p class="tagged-as">Tags:
                                    <span class="cl">Natural</span>,
                                    <span class="cl">Organic</span>,
                                    <span class="cl">Health</span>,
                                    <span class="cl">Green</span>,
                                    <span class="cl">Vegetable</span>
                                </p>
                                <p class="id">ID:
                                    <span  class='cl' >A203</span>
                                </p>
                            </div>
                            <div class="widget-social align-left">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function view(name,price,src,describe) {
        $("#product_d").html(describe);
        $("#pname").html(name);
        $("#price").html(price);
        $("#src").attr('src',src);

    }
</script>
<script type="text/javascript">
    function _fresh() {
        var endtime = new Date("2019/9/20,12:20:12");
        var nowtime = new Date();
        var leftsecond = parseInt((endtime.getTime() - nowtime.getTime()) / 1000);
        if (leftsecond < 0) { leftsecond = 0; }
        __d = parseInt(leftsecond / 3600 / 24);
        __h = parseInt((leftsecond / 3600) % 24);
        __m = parseInt((leftsecond / 60) % 60);
        __s = parseInt(leftsecond % 60);
        document.getElementById("times").innerHTML ="限时7折: " +__d + "天 " + __h + "小时" + __m + "分" + __s + "秒 :";
        if (leftsecond <= 0) {
            document.getElementById("times").innerHTML = "抢购已结束";
            clearInterval(sh);
        }
    }
    _fresh()
    var sh;
    setInterval(_fresh, 10);
</script>
<script src="../js/library/jquery.min.js"></script>
<script src="../js/library/bootstrap.min.js"></script>
<script src="../js/function-check-viewport.js"></script>
<script src="../js/library/slick.min.js"></script>
<script src="../js/library/select2.full.min.js"></script>
<script src="../js/library/imagesloaded.pkgd.min.js"></script>
<script src="../js/library/jquery.mmenu.all.min.js"></script>
<script src="../js/library/rellax.min.js"></script>
<script src="../js/library/isotope.pkgd.min.js"></script>
<script src="../js/library/bootstrap-notify.min.js"></script>
<script src="../js/library/bootstrap-slider.js"></script>
<script src="../js/library/in-view.min.js"></script>
<script src="../js/library/countUp.js"></script>
<script src="../js/library/animsition.min.js"></script>
<link rel="stylesheet" type="text/css" href="../revolution/css/settings.css" />
<link rel="stylesheet" type="text/css" href="../revolution/css/layers.css" />
<link rel="stylesheet" type="text/css" href="../revolution/css/navigation.css" />
<script src="../revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="../revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="../revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="../js/global.js"></script>
<script src="../js/config-banner-home-1.js">


</script>
<script src="../js/config-mm-menu.js"></script>
<script src="../js/config-set-bg-blog-thumb.js"></script>
<script src="../js/config-isotope-product-home-1.js">


</script>
<script src="../js/config-carousel-thumbnail.js"></script>
<script src="../js/config-carousel-product-quickview.js"></script>
<!-- Demo Only-->
<script src="../js/demo-add-to-cart.js">


</script>
</body>
</html>
