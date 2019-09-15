<%--
  Created by IntelliJ IDEA.
  User: ztc
  Date: 2019/9/15
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Form by Tooplate</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
    <link rel="stylesheet" href="css/leave.css">
</head>

<body id="login">
<div class="container">
    <div class="row tm-register-row tm-mb-35">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-l">
            <form action="/userLogin/selectUser" method="post" class="tm-bg-black p-5 h-100">
                <div class="input-field">
                    <input placeholder="Username" id="username" name="username" type="text" class="validate" >
                </div>
                <div class="input-field mb-5">
                    <input placeholder="Password" id="password" name="password" type="password" class="validate">

                </div>
                <div style="color: red">${error}</div>
                <div class="tm-flex-lr">
                    <a href="#" class="white-text small">注册</a>
                    <button type="submit" class="waves-effect btn btn-default  px-4 black-text rounded-0">Login</button>
                </div>
                <a href="#" class="white-text small">忘记密码？</a>
            </form>

        </div>
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-r">
            <header class="font-weight-light tm-bg-black p-5 h-100">
                <h4 class="mt-0 text-white font-weight-light"><p>健康日志</p></h4>
                <p >人体每天摄入的食物中，按重量计算，60%应该是碳水化合物，30%是蛋白质，10%是脂肪</p>
                <p >应该多食用"高纤维碳水化合物"（如豆类、薯类、蔬菜、水果），避免仅仅食用"低纤维碳水化合物（如淀粉、精加工谷物、糖类和甜味剂）.</p>
            </header>
        </div>
    </div>
    <footer class="row tm-mt-big mb-3">
        <div class="col-xl-12 text-center">
            <p >
                人体每天摄入的食物中，按重量计算，60%应该是碳水化合物，30%是蛋白质，10%是脂肪。
            </p>
        </div>
    </footer>
</div>
<div class="leaf" style="pointer-events: none">
    <div>  <img src="/img/001.png" height="75px" width="75px"></img></div>
    <div><img src="../img/002PNG.png" height="75px" width="75px"></img></div>
    <div>  <img src="../img/003PNG.png" height="75px" width="75px" ></img></div>
    <div><img  src="../img/004PNG.png" height="75px" width="75px"></img></div>
    <div> <img src="../img/005PNG.png" height="75px" width="75px"></img></div>
    <div>   <img src="../img/006PNG.png" height="75px" width="75px"></div>
    <div><img src="../img/007PGN.png" height="75px" width="75px"></div>
    <div>  <img src="../img/004PNG.png" height="75px" width="75px"></img></div>
    <div><img src="../img/002PNG.png" height="75px" width="75px"></img></div>
    <div>  <img src="../img/002PNG.png" height="75px" width="75px" ></img></div>
</div>
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/materialize.min.js"></script>
<script>
    $(document).ready(function () {
        $('select').formSelect();
        var username=document.getElementById("username");
        username.focus();
    });
</script>

</body>

</html>
