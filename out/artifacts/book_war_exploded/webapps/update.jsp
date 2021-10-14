<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/12
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改图书信息</title>
</head>
<body>
    <div align="center">
        <form action="/book_war_exploded/update2" method="get" style="margin-top: 260px">
            <table border="1">
                <tr>
                    <td width="80" height="60">图书ID</td>
                    <td width="150">图书名称</td>
                    <td width="100">作者</td>
                    <td width="150">出版社</td>
                    <td width="80">价格</td>
                    <td width="100">剩余藏书数量</td>
                    <td width="80">操作</td>
                </tr>
                <tr>
                    <td><input name="id" style="font-size: 16px" type="text" value="${requestScope.book.id}"/></td>
                    <td><input name="bookname" style="font-size: 16px" type="text" value="${requestScope.book.bookname}"/></td>
                    <td><input name="writer" style="font-size: 16px" type="text" value="${requestScope.book.writer}"/></td>
                    <td><input name="publisher" style="font-size: 16px" type="text" value="${requestScope.book.publisher}"/></td>
                    <td><input name="price" style="font-size: 16px" type="text" value="${requestScope.book.price}"/></td>
                    <td><input name="sum" style="font-size: 16px" type="text" value="${requestScope.book.sum}"/></td>
                    <td><input type="submit" style="font-size: 16px" value="提交"/></td>
                </tr>
            </table>
        </form>
    </div>
    <div align="center">
        <a href="/book_war_exploded/showBook" style="font-size: 16px">返回首页</a>
    </div>
</body>
</html>
