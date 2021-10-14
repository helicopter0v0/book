<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/12
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加失败</title>
</head>
<body>
    <%
        if((int)request.getAttribute("key")==0){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，图书ID不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==1){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，图书名称不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==2){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，作者不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==3){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，出版社不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==4){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，价格不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==5){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，剩余藏书量不可为空！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==6){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，请在图书ID栏中填入一个整数！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==7){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，请在价格栏中填入一个数字！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==8){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，请在剩余藏书量栏中填入一个整数！");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==9){
    %>
    <script type="text/javascript" language="javascript">
        alert("添加失败，图书ID已经存在");
        window.location='webapps/add.jsp';
    </script>
    <%
        }
    %>
</body>
</html>
