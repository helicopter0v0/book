<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/4
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加图书</title>
    <style type="text/css">
        .text001{
            align:"center";
            height: 50px;
            width: 80%;
            type:"text"
        }
    </style>
</head>
<body>
    <h1 align="center" style="margin-top: 60px">请填写图书相关信息</h1>
    <br>
    <br>
    <form name="form1" action="http://localhost:8080/book_war_exploded/add" >
        <table border="1" align="center" cellspacing="0" height="160">
            <tr align="center">
                <td width="80" height="60">图书ID</td>
                <td width="150">图书名称</td>
                <td width="100">作者</td>
                <td width="200">出版社</td>
                <td width="100">价格</td>
                <td width="150">剩余藏书数量</td>
            </tr>
            <tr align="center">
                <td>
                    <input id="bookid" name="bookid" class="text001"/>
                </td>
                <td>
                    <input id="bookname" name="bookname" class="text001"/>
                </td>
                <td>
                    <input id="writer" name="writer" class="text001"/>
                </td>
                <td>
                    <input id="publisher" name="publisher" class="text001"/>
                </td>
                <td>
                    <input id="price" name="price" class="text001"/>
                </td>
                <td>
                    <input id="sum" name="sum" class="text001"/>
                </td>
            </tr>
        </table>
        <br>
        <input type="submit" style="margin-left: 46%;margin-top: 20px;width: 80px;height: 40px" id="001" value="确认添加"><br>
    </form>
    <form name="form2" action="http://localhost:8080/book_war_exploded/showBook" method="post">
        <input style="margin-left: 46%;margin-top: 20px;width: 80px;height: 40px" type="submit" value="返回主页">
    </form>
</body>
</html>
