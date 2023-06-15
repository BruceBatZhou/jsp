<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/15
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="./jquery/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="log-reg.css">
    <title>登录</title>

    <script type="text/javascript">
        $(function () {
            let actSvd = sessionStorage.getItem('account');
            let pwdSvd = sessionStorage.getItem('password');
            $("form").submit(function () {
                let actIpt = $("#act").val();
                let pwdIpt = $("#pwd").val();
                let actMsg = $("#act-text");
                let pwdMsg = $("#pwd-text");
                if (actIpt.trim().length !== "") {
                    if (actIpt !== actSvd) {
                        actMsg.html("账号不存在");
                        actMsg.css("color", "red");
                        return false;
                    } else {
                        actMsg.html("");
                    }
                } else {
                    actMsg.html("请输入账号");
                    actMsg.css("color", "red");
                    return false;
                }
                if (pwdIpt.trim().length !== "") {
                    if (pwdIpt !== pwdSvd) {
                        pwdMsg.html("密码错误");
                        pwdMsg.css("color", "red");
                        return false;
                    } else {
                        pwdMsg.html("");
                    }
                } else {
                    pwdMsg.html("请输入密码");
                    pwdMsg.css("color", "red");
                    return false;
                }
                alert("登录成功");
                window.open("./index.jsp")
            });
        })
    </script>
</head>

<body>
<form>
    <fieldset>
        <legend>用户登录</legend>
        <table>
            <tr>
                <td><label for="account">账号：</label></td>
                <td><input type="text" name="account" id="account"/></td>
                <td><span id="act-text"></span></td>
            </tr>
            <tr>
                <td><label for="pwd">密码：</label></td>
                <td><input type="password" name="pwd" id="pwd"/></td>
                <td><span id="pwd-text"></span></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="登&emsp;录"/>
        </p>
        <p>
            <a href="./register.jsp">没有账号，去注册一个</a>
        </p>
    </fieldset>
</form>
</body>
</html>