<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/4
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>图书管理系统</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
      $(function () {
        $("a#delete").click(function () {
          return confirm("是否确认删除" + $(this).parent().parent().find("td:nth-child(2)").text());
        })
      })
    </script>
  </head>
  <body>
    <div align="center" style="margin-top: 60px">
      <a href="/book_war_exploded/webapps/add.jsp" style="font-size: 20px">添加图书</a></button>
    </div>
    <table border="1" align="center" cellspacing="0" id="booktable" style="margin-top: 40px">
      <tr align="center">
        <td width="80" height="60">图书ID</td>
        <td width="150">图书名称</td>
        <td width="100">作者</td>
        <td width="200">出版社</td>
        <td width="80">价格</td>
        <td width="100">剩余藏书数量</td>
        <td width="100">操作</td>
      </tr>
      <c:forEach items="${requestScope.books}" var="book">
        <tr align="center">
          <td height="60">${book.id}</td>
          <td>${book.bookname}</td>
          <td>${book.writer}</td>
          <td>${book.publisher}</td>
          <td>${book.price}</td>
          <td>${book.sum}</td>
          <td style="color: blue">
            <a href="/book_war_exploded/update?id=${book.id}">修改 </a>
            <a id="delete" href="/book_war_exploded/delete?id=${book.id}">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>
    <div align="center" style="margin-top: 60px">
      <c:if test="${requestScope.pagenow>1}">
        <a href="/book_war_exploded/showBook2?pagenow=1">首页</a>
        <a href="/book_war_exploded/showBook2?pagenow=${requestScope.pagenow-1}">上一页</a>
      </c:if>
      <c:choose>
        <c:when test="${requestScope.lastpage<=5}">
          <c:forEach begin="1" end="${requestScope.lastpage}" var="i">
            <c:if test="${i == requestScope.pagenow}">
              【${i}】
            </c:if>
            <c:if test="${i != requestScope.pagenow}">
              <a href="/book_war_exploded/showBook2?pagenow=${i}">${i}</a>
            </c:if>
          </c:forEach>
        </c:when>
        <c:when test="${requestScope.lastpage>5}">
          <c:choose>
            <c:when test="${requestScope.pagenow<3}">
              <c:forEach begin="1" end="5" var="i">
                <c:if test="${i == requestScope.pagenow}">
                  【${i}】
                </c:if>
                <c:if test="${i != requestScope.pagenow}">
                  <a href="/book_war_exploded/showBook2?pagenow=${i}">${i}</a>
                </c:if>
              </c:forEach>
            </c:when>
            <c:when test="${requestScope.pagenow>requestScope.lastpage-3}">
              <c:forEach begin="${requestScope.lastpage-4}" end="${requestScope.lastpage}" var="i">
                <c:if test="${i == requestScope.pagenow}">
                  【${i}】
                </c:if>
                <c:if test="${i != requestScope.pagenow}">
                  <a href="/book_war_exploded/showBook2?pagenow=${i}">${i}</a>
                </c:if>
              </c:forEach>
            </c:when>
            <c:otherwise>
              <c:forEach begin="${requestScope.pagenow-2}" end="${requestScope.pagenow+2}" var="i">
                <c:if test="${i == requestScope.pagenow}">
                  【${i}】
                </c:if>
                <c:if test="${i != requestScope.pagenow}">
                  <a href="/book_war_exploded/showBook2?pagenow=${i}">${i}</a>
                </c:if>
              </c:forEach>
            </c:otherwise>
          </c:choose>
        </c:when>
      </c:choose>
      <c:if test="${requestScope.pagenow<requestScope.lastpage}">
        <a href="/book_war_exploded/showBook2?pagenow=${requestScope.pagenow+1}">下一页</a>
        <a href="/book_war_exploded/showBook2?pagenow=${requestScope.lastpage}">尾页</a>
      </c:if>
    </div>
    </body>
</html>
