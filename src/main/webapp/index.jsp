<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="main.css"/>
    <meta charset="UTF-8">
</head>

<body>
<div class="container">

    <div class="banner">
        <a href="https://www.cjlu.edu.cn/">
            <img id="scLogo" src="./img/scLogo.png" alt="school logo"/>
        </a>
        <a href="./index.jsp">
            <img id="webFE" src="img/webFront.png" alt="web front-end"/>
        </a>
        <span class="clearBoth"></span>
    </div>

    <div class="navigator">
        <ul class="navi_list">
            <li>
                <a class="navi_button" href="./login.jsp" target="myFrame">登录</a>
            </li>
            <li>
                <a class="navi_button" href="./selfResume.html" target="myFrame">个人简历</a>
            </li>
            <li>
                <a class="navi_button" href="./homefamous.jsp" target="myFrame">家乡名胜</a>
            </li>
            <li>
                <a class="navi_button" href="./omiyage.html" target="myFrame">家乡特产</a>
            </li>

        </ul>
    </div>

    <div class="clearBoth"></div>
    <div class="focus" style="display: none;">
        <div class="focus_left"></div>
        <div class="focus_right"></div>
    </div>

    <div class="clearBoth"></div>
    <div class="content">
        <div class="content_left"></div>

        <div class="content_center">
            <iframe name="myFrame" id="centerFrame" src="./login.jsp" width="800px" height="600px" allowfullscreen>
                您的浏览器不支持iframe框架，请切换浏览器重试
            </iframe>
        </div>

        <div class="content_right"></div>
    </div>

    <div class="clearBoth"></div>
    <div class="footerDiv">
        学号: 20H034160303 姓名：周巨福 联系方式: 18257503601
    </div>

</div>
</body>

</html>
