<%--
  Created by IntelliJ IDEA.
  User: ztc
  Date: 2019/9/19
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
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
    <title>Home</title>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body class="animsition">
<div class="shop-cart" id="page">
    <nav id="menu">
        <ul>
            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
            <li><a href="/selectList/seleAllShopList?currentPage=1">商品列表</a></li>
            <li><a href="../shop-detail.html">商品详情</a><li>
            <li><a href="../wish-list.html">愿望清单</a></li>
            <li><a href="/cart/findAllCart">购物车</a></li>
            <li><a href="../check-out.html">结算</a></li>
        </ul>
    </nav>
    <header class="header-style-1 static">
        <div class="container">
            <div class="row">
                <div class="header-1-inner">
                    <a class="brand-logo animsition-link" href="index.html">
                        <img class="img-responsive" src="images/logo.png" alt="" />
                    </a>
                    <nav>
                        <ul class="menu hidden-xs">
                            <li><a href="/selectProduct/selectAllProduct">主页</a></li>
                            <li><a href="/selectList/seleAllShopList?currentPage=1">商品列表</a></li>
                            <li><a href="../shop-detail.html">商品详情</a><li>
                            <li><a href="../wish-list.html">愿望清单</a></li>
                            <li><a href="/cart/findAllCart">购物车</a></li>
                            <li><a href="../check-out.html">结算</a></li>
                        </ul>
                    </nav>
                    <aside class="right">
                        <div class="widget widget-control-header">
                            <div >
                                <span class="team-wrapper">你好：</span>
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
                            <a class="control" href="shop-cart.html">
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
    <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="images/sub-header/013.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop Cart</h3>
    </section>
    <section class="boxed-sm">
        <div class="container">
            <div class="woocommerce">
                <form class="woocommerce-cart-form">
                    <table class="woocommerce-cart-table">
                        <thead>
                        <tr>
                            <th class="product-thumbnail">Product</th>
                            <th class="product-name"></th>
                            <th class="product-weight">Weight</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-price">Price</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove"></th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${cart}" var="car" varStatus="count">
                        <tr>
                            <td class="product-thumbnail">
                                <img src="${car.PSrc}" alt="product-thumbnail" width="75" height="75">
                            </td>
                            <td class="product-name" data-title="Product">
                                <a class="product-name" href="#">${car.PName}</a>
                            </td>
                            <td class="product-weight" data-title="Weight">0.4 kg</td>
                            <td class="product-quantity" data-title="Quantity">
                                <input class="qty" step="1" min="0" max="" name="product-name" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">
                            </td>
                            <td class="product-price" data-title="Price">$${car.PPrice}</td>
                            <td class="product-subtotal" data-title="Total">$${car.PTotal}</td>
                            <td class="product-remove">
                                <a class="remove" aria-label="Remove this item" href="/cart/delCart?cartId=${car.cartId}" >×</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="7">
                                <div class="form-coupon organic-form">
                                    <div class="form-group update-cart">
                                        <a class="btn btn-brand-ghost pill"> COMMIT </a>
                                    </div>
                                    <div class="form-group update-cart">
                                        <b>ni de  total is :</b>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </form>
            </div>
        </div>
    </section>
</div>
<footer class="footer-style-1">
    <div class="container">
        <div class="row">
            <div class="footer-style-1-inner">
                <div class="widget-footer widget-link col-second col-medium">
                    <p>盘子里的草莓，红白相间，和谐统一，犹如一幅名家的油画。
                        <br>
                        Copyright © 2019 Designed by ZTC&&ZXP. All rights reserved.
                    </p>
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
                    <div class="col-md-6">
                        <div class="woocommerce-product-gallery">
                            <div class="main-carousel-product-quick-view">
                                <div class="item">
                                    <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail" />
                                </div>
                            </div>
                            <div class="thumbnail-carousel-product-quickview">
                                <div class="item">
                                    <img class="img-responsive" src="images/product/01.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/02.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/03.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/04.jpg" alt="product thumbnail" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="images/product/05.jpg" alt="product thumbnail" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="summary">
                            <div class="desc">
                                <div class="header-desc">
                                    <h2 class="product-title">Sald</h2>
                                    <p class="price">$2.00</p>
                                </div>
                                <div class="body-desc">
                                    <div class="woocommerce-product-details-short-description">
                                        <p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis
                                            sem dapibus, varius egestas lorem a sollicitudin. </p>
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
                                    <a href="#" rel="tag">Food</a>
                                </p>
                                <p class="tagged-as">Tags:
                                    <a href="#" rel="tag">Natural</a>,
                                    <a href="#" rel="tag">Organic</a>,
                                    <a href="#" rel="tag">Health</a>,
                                    <a href="#" rel="tag">Green</a>,
                                    <a href="#" rel="tag">Vegetable</a>
                                </p>
                                <p class="id">ID:
                                    <a href="#">A203</a>
                                </p>
                            </div>
                            <div class="widget-social align-left">
                                <ul>
                                    <li>
                                        <a class="facebook" data-toggle="tooltip" title="Facebook" href="http://www.facebook.com/authemes">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="pinterest" data-toggle="tooltip" title="Pinterest" href="http://www.pinterest.com/authemes">
                                            <i class="fa fa-pinterest"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="twitter" data-toggle="tooltip" title="Twitter" href="http://www.twitter.com/authemes">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="google-plus" data-toggle="tooltip" title="Google Plus" href="https://plus.google.com/authemes">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="instagram" data-toggle="tooltip" title="Instagram" href="https://instagram.com/authemes">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

</script>
<script src="js/library/jquery.min.js"></script>
<script src="js/library/bootstrap.min.js"></script>
<script src="js/function-check-viewport.js"></script>
<script src="js/library/slick.min.js"></script>
<script src="js/library/select2.full.min.js"></script>
<script src="js/library/imagesloaded.pkgd.min.js"></script>
<script src="js/library/jquery.mmenu.all.min.js"></script>
<script src="js/library/rellax.min.js"></script>
<script src="js/library/isotope.pkgd.min.js"></script>
<script src="js/library/bootstrap-notify.min.js"></script>
<script src="js/library/bootstrap-slider.js"></script>
<script src="js/library/in-view.min.js"></script>
<script src="js/library/countUp.js"></script>
<script src="js/library/animsition.min.js"></script>
<script src="js/global.js"></script>
<script src="js/config-mm-menu.js"></script>
</body>
</html>


