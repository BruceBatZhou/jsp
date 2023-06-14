<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/15
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="./jquery/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <title></title>
    <style type="text/css">
        body {
            background-color: rgb(255, 255, 255, 40%);
        }

        * {
            margin: 0px;
            padding: 0px;
        }

        fieldset {
            width: 600px;
            margin: 0 auto;
            margin-top: 50px;
            background-color: rgb(255, 255, 255, 70%);
        }

        legend {
            margin-left: 20px;
            padding: 2px 10px;
            background-color: aliceblue;
        }

        table {
            padding: 20px 20px;
        }

        p {
            text-align: center;
            margin-bottom: 20px;
        }

        td input {
            width: 200px;
            height: 30px;
        }

        p input {
            width: 150px;
            height: 30px;
            border: 0;
            background-color: cornflowerblue;
            color: white;
            font-size: 20px;
        }

        a {
            text-decoration: none;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            var ac = sessionStorage.getItem('account');
            var pwd = sessionStorage.getItem('password');
            $("form").submit(function () {
                var account = $("#account").val();
                var password1 = $("#pwd").val();
                if (account.trim().length != "") {
                    if (account != ac) {
                        $("#text1").html("账号不存在");
                        $("#text1").css("color", "red");
                        return false;
                    } else {
                        $("#text1").html("");
                    }
                } else {
                    $("#text1").html("请输入账号");
                    $("#text1").css("color", "red");
                    return false;
                }
                if (password1.trim().length != "") {
                    if (password1 != pwd) {
                        $("#text2").html("密码错误");
                        $("#text2").css("color", "red");
                        return false;
                    } else {
                        $("#text2").html("");
                    }
                } else {
                    $("#text2").html("请输入密码");
                    $("#text2").css("color", "red");
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
        <table cellspacing="20px">
            <tr>
                <td>账号：</td>
                <td><input type="text" name="account" id="account"/></td>
                <td><span id="text1"></span></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd" id="pwd"/></td>
                <td><span id="text2"></span></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="登 录"/>
        </p>
        <p>
            <a href="./register.jsp">没有账号，去注册一个</a>
        </p>
    </fieldset>
</form>


</body>

</html>