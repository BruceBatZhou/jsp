<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/15
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="./jquery/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <!-- <script src="validation/dist/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script> -->
    <script src="./validation/dist/localization/messages_zh.js" type="text/javascript" charset="utf-8"></script>
    <script src="./validation/dist/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="log-reg.css">
    <title>注册</title>

    <script type="text/javascript">
        $.validator.addMethod("phone", function (value) {
            return new RegExp(/^(13[0-9]|14[57]|15[0-35-9]|17[6-8]|18[0-9])[0-9]{8}$/).test(value);
        }, "手机号码不正确");

        let form = $("form");
        $(function () {
            form.validate({
                rules: {
                    account: {
                        required: true,
                        digits: true,
                        rangelength: [6, 12]
                    },
                    pwd1: {
                        required: true,
                        rangelength: [6, 12]
                    },
                    pwd2: {
                        required: true,
                        equalTo: "#pwd1"
                    },
                    name: {
                        required: true,
                        rangelength: [2, 6]
                    },
                    phone: {
                        required: true,
                        phone: true
                    },
                    address: {
                        required: true,
                        minlength: [2]
                    }
                },
                messages: {
                    account: {
                        required: "账号不能为空",
                        digits: "账号必须为数字",
                        rangelength: "账号的长度必须为6到12位"
                    },
                    pwd1: {
                        required: "密码不能为空",
                        rangelength: "密码的长度必须为6到12位"
                    },
                    pwd2: {
                        required: "确认密码不能为空",
                        equalTo: "两次密码必须输入一致"
                    },
                    name: {
                        required: "姓名不能为空",
                        rangelength: "姓名的长度必须为2到6位"
                    },
                    phone: {
                        required: "手机号码不能为空",
                        phone: "请输入正确的手机号码"
                    },
                    address: {
                        required: "地址不能为空",
                        minlength: "地址至少大于2位字符"
                    }
                }
            });
            form.submit(function () {
                let account = $("#account").val();
                let pwd1 = $("#pwd1").val();
                let pwd2 = $("#pwd2").val();
                let name = $("#name").val();
                let phone = $("#phone").val();
                let address = $("#address").val();
                if (account === "" || pwd1 === "" || pwd2 === "" || name === "" || phone === "" || address === "") {
                    return false;
                }
                sessionStorage.setItem("account", account);
                sessionStorage.setItem("password", pwd2);
                alert("注册成功")
            });
        });
    </script>
</head>

<body>

<form action="./login.jsp">
    <fieldset>
        <legend>用户注册</legend>
        <table>
            <tr>
                <td><label for="account">账号：</label></td>
                <td><input type="text" name="account" id="account"/></td>
            </tr>
            <tr>
                <td><label for="pwd1">密码：</label></td>
                <td><input type="password" name="pwd1" id="pwd1"/></td>
            </tr>
            <tr>
                <td><label for="pwd2">确认密码：</label></td>
                <td><input type="password" name="pwd2" id="pwd2"/></td>
            </tr>
            <tr>
                <td><label for="name">姓名：</label></td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td><label for="phone">联系电话：</label></td>
                <td><input type="text" name="phone" id="phone"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="注&emsp;册"/>
        </p>
        <p>
            <a href="./login.jsp">已有账号，去登录</a>
        </p>
    </fieldset>
</form>

</body>

</html>