<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/10
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
</head>
<body>
    <form action="http://localhost:8080/book_war_exploded/user" method="post">
        <table align="center" style="margin-top: 200px">
            <tr>
                <td style="font-size: 20px">用户名称：</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">用户密码：</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td style="font-size: 20px">
                    <input type="submit" value="登录" style="width: 80%;height: 100%;font-size: 18px"/>
                </td>
                <td style="font-size: 20px">
                    <a href="/book_war_exploded/webapps/regist.jsp">注册账号</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
