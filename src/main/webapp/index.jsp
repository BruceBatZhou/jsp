<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/15
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
            <img id="sc-logo" src="img/school-logo.png" alt="school logo"/>
        </a>
        <a href="#">
            <img id="java-web" src="img/java-web.png" alt="web front-end"/>
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
    <div class="content">
        <div class="content_left"></div>

        <div class="content_center">
            <iframe name="myFrame" id="centerFrame" src="./login.jsp" width="800px" height="600px" allowfullscreen
                    title="embedded frame show pages">
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
