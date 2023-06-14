<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/15
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="./jquery/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <!-- <script src="validation/dist/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script> -->
    <script src="./validation/dist/localization/messages_zh.js" type="text/javascript" charset="utf-8"></script>
    <script src="./validation/dist/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
    <title></title>
    <style>
        body {
            background-color: rgb(255, 255, 255, 40%);
        }

        * {
            margin: 0;
            padding: 0;
        }

        fieldset {
            width: 600px;
            margin: 50px auto 0;
            background-color: rgb(255, 255, 255,70%);
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

        .error {
            color: red;
        }
    </style>
    <script type="text/javascript">
        $.validator.addMethod("phone", function (value, element, param) {
            return new RegExp(/^(13[0-9]|14[57]|15[0-35-9]|17[6-8]|18[0-9])[0-9]{8}$/).test(value);
        }, "手机号码不正确");
        $(function () {
            $("form").validate({
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
            $("form").submit(function () {
                var account = $("#account").val();
                var pwd1 = $("#pwd1").val();
                var pwd2 = $("#pwd2").val();
                var name = $("#name").val();
                var phone = $("#phone").val();
                var address = $("#address").val();
                if (account == "" || pwd1 == "" || pwd2 == "" || name == "" || phone == "" || address == "") {
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
        <table cellspacing="20px">
            <tr>
                <td>账号：</td>
                <td><input type="text" name="account" id="account"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd1" id="pwd1"/></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="pwd2" id="pwd2"/></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td>联系电话：</td>
                <td><input type="text" name="phone" id="phone"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="注 册"/>
        </p>
        <p>
            <a href="./login.jsp">已有账号，去登录</a>
        </p>
    </fieldset>
</form>

</body>

</html>