<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/10
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
    <form method="post" action="http://localhost:8080/book_war_exploded/regist">
        <table align="center" style="margin-top: 200px">
            <tr>
                <td style="font-size: 20px">用户名称：</td>
                <td><input name="username" type="text"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">用户密码：</td>
                <td><input name="password1" type="password"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">确认密码：</td>
                <td><input name="password2" type="password"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">电子邮箱：</td>
                <td><input name="email" type="text"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">
                    <input type="submit" value="确认注册" style="width: 80%;height: 100%"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
