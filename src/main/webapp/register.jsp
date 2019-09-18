<%--
  Created by IntelliJ IDEA.
  User: ztc
  Date: 2019/9/16
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register - Input Form by Tooplate</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
</head>

<body id="register">
<div class="container">
    <div class="row tm-register-row">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-register-col-l">
            <form action="/registerController/register" method="post" id="myfrom">
                <div class="mb-2">
                    <label class="mr-4">
                        <input class="with-gap" name="sex" type="radio" value="男" />
                        <span>男</span>
                    </label>
                    <label class="mr-4">
                        <input class="with-gap" name="sex" type="radio" value="女" />
                        <span>女</span>
                    </label>
                </div>
                <div class="input-field">
                    <input placeholder="姓名" id="username" name="username" type="text" class="validate">
                </div>
                <div class="input-field">
                    <input placeholder="密码" id="password" name="password" type="text" class="validate">
                </div>
                <div class="input-field">
                    <input placeholder="电话号码" id="mobile" name="phone" type="text" class="validate">
                </div>
                <div class="input-field">
                    <input placeholder="Email" id="email" name="email" type="email" class="validate">
                </div>
                <div class="text-right mt-4">
                    <button type="submit" onclick="login()" class="btn btn-default">提交</button>
                </div>
            </form>
            <div style="color: greenyellow;" id="mydiv"></div>
        </div>
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-register-col-r">
            <header class="mb-5">
                <h3 class="mt-0 text-white">REGISTER Yourself</h3>
                <p class="grey-text">Aenean tincidunt, enim nec blandit lobortis, ante enim ultrices eros, et laoreet augue libero id nunc.
                    Proin semper feugiat ultrices.</p>
                <p class="grey-text">Aenean a efficitur magna, sed dignissim odio. Praesent pretium lectus ac nunc ultrices, ac volutpat orci
                    viverra.
                </p>
            </header>

        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/materialize.min.js"></script>

<script>
    function login(){
        $.ajax({
            type:"post",
            url:"/registerController/register",
            data:$("#myfrom").serialize(),
            success:function(msg){
                document.write("注册成功，1秒后跳转...")
                function sleep(ms) {
                    return new Promise(resolve => setTimeout(resolve, ms)
                )
                }
                sleep(1000).then(()=>{
                    document.location.href="/vegetable-shop/login.jsp"
                }
                )
        }
        });
        }
</script>
<script>

</script>
<script src="/js/library/jquery.min.js"></script>
<script src="/js/library/bootstrap.min.js"></script>
<script src="/js/function-check-viewport.js"></script>
<script src="/js/library/slick.min.js"></script>
<script src="/js/library/select2.full.min.js"></script>
<script src="/js/library/imagesloaded.pkgd.min.js"></script>
<script src="/js/library/jquery.mmenu.all.min.js"></script>
<script src="/js/library/rellax.min.js"></script>
<script src="/js/library/isotope.pkgd.min.js"></script>
<script src="/js/library/bootstrap-notify.min.js"></script>
<script src="/js/library/bootstrap-slider.js"></script>
<script src="/js/library/in-view.min.js"></script>
<script src="/js/library/countUp.js"></script>
<script src="/js/library/animsition.min.js"></script>
<script src="/js/global.js"></script>
<script src="/js/config-mm-menu.js"></script>
<script src="/js/config-carousel-product-quickview.js"></script>
</body>

</html>
