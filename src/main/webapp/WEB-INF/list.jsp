<%--
  Created by IntelliJ IDEA.
  User: ztc
  Date: 2019/9/14e
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        .disabled{
            pointer-events:none;
        }
        .cl{
            color: #1d7d74;
        }
    </style>
</head>
<body class="animsition">
<div class="shop-layout-1" id="page">
    <!--      编写菜单-->
    <nav id="menu">
        <ul>
            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
            <li><a href="/selectList/seleAllShopList">商品列表</a></li>
            <li><a href="../shop-detail.html">商品详情</a><li>
            <li><a href="../wish-list.html">愿望清单</a></li>
            <li><a href="../shop-cart.html">购物车</a></li>
            <li><a href="../check-out.html">结算</a></li>
        </ul>
    </nav>

    <!--      当窗口缩小到一定比例得时候 隐藏菜单-->
    <header class="header-style-1 static">
        <div class="container">
            <div class="row">
                <div class="header-1-inner">
                    <a class="brand-logo animsition-link" href="../index.html">
                        <img class="img-responsive" src="../images/logo.png" alt="" />
                    </a>
                    <nav>
                        <ul class="menu hidden-xs">
                            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
                            <li><a href="/selectList/seleAllShopList">商品列表</a></li>
                            <li><a href="../shop-detail.html">商品详情</a><li>
                            <li><a href="../wish-list.html">愿望清单</a></li>
                            <li><a href="../shop-cart.html">购物车</a></li>
                            <li><a href="../check-out.html">结算</a></li>
                        </ul>
                    </nav>
                    <aside class="right">
                        <div class="widget widget-control-header">
                            <!--                  设计下拉框-->
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
    <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="../images/sub-header/01.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop</h3>
    </section>

    <div class="woocommerce-top-control wrapper">
        <section class="boxed-sm">
            <div class="container">
                <div class="row">
                    <div class="woocommerce-top-control">
                        <p class="woocommerce-result-count">Showing 1 - 12 of 30 results</p>
                        <form class="woocommerce-ordering select-custom-wrapper" method="get">
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <section class="box-xs">
        <div class="container">
            <div class="row main">
                <div class="row product-grid-equal-height-wrapper product-equal-height-4-columns flex multi-row">

                    <c:forEach items="${pagelist.data}" var="page">
                    <figure class="item">
                        <div class="product product-style-1">
                            <div class="img-wrapper">
                                <a href="#">
                                    <img class="img-responsive" src=${page.src} alt="productthumbnail" />
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
                            </div>
                            <figcaption class="desc text-center">
                                <h3>
                                    <a class="product-name" href="#">${page.name}</a>
                                </h3>
                                <span class="price">￥${page.price}</span>
                            </figcaption>
                        </div>
                    </figure>

                    </c:forEach>
                </div>

                <div class="row">
                    <div class="col-md-12 text-right">
                        <nav>
                            <ul class="pagination pagination-style-1">
                                <c:choose>
                                    <c:when test="${pagelist.currentPage == 1}">
                                        <li class="disabled">
                                            <a href="" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                     </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/selectList/seleAllShopList?currentPage=${pagelist.currentPage-1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                                <c:forEach begin="1" end="${pagelist.totalPage}" var="count">
                                    <c:choose>
                                        <c:when test="${pagelist.currentPage eq count}">
                                            <li class="active">
                                         <a id="011" class="page-numbers"  href="#">${count}</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                            <a class="page-numbers" href="${pageContext.request.contextPath }/selectList/seleAllShopList?currentPage=${count}" >${count}</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>

                                <c:choose>
                                    <c:when test="${pagelist.totalPage eq pagelist.currentPage}">
                                        <li class="disabled">
                                            <a href="#" aria-label="Previous">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/selectList/seleAllShopList?currentPage=${pagelist.currentPage+1}" aria-label="Previous">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<footer class="footer-style-1">
    <div class="container">
        <div class="row">
            <div class="footer-style-1-inner">
                <div class="widget-footer widget-text col-first col-small">
                    <p class="">
                        “小瓷碗盛了滑滑的老豆腐，被切成细丁的胡萝卜懒懒的趴在上面荡漾，薄薄的手抓饼裹泡满满着汤汁被味蕾抓住，嫩嫩的香菜就在舌尖炸开了花，早上好啊”
                    </p>

                </div>
            </div>
        </div>
    </div>
    <div class="copy-right style-1">
        <div class="container">
            <div class="row">
                <div class="copy-right-inner">
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
        alert(describe);
    }
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
<script src="../js/global.js"></script>
<script src="../js/config-mm-menu.js"></script>
<script src="../js/config-carousel-product-quickview.js"></script>
<!-- Demo Only-->
<script src="../js/demo-add-to-cart.js">


</script>
</body>
</html>


