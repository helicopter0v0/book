<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/10/10
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册失败</title>
</head>
<body>
    <%
        if((int)request.getAttribute("key")==0){
    %>
    <script type="text/javascript" language="javascript">
        alert("用户名已存在");
        window.location='webapps/regist.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==1){
    %>
    <script type="text/javascript" language="javascript">
        alert("两次密码输入不同");
        window.location='webapps/regist.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==2){
    %>
    <script type="text/javascript" language="javascript">
        alert("用户名不能为空");
        window.location='webapps/regist.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==3){
    %>
    <script type="text/javascript" language="javascript">
        alert("密码不可为空");
        window.location='webapps/regist.jsp';
    </script>
    <%
        }
    %>
    <%
        if((int)request.getAttribute("key")==4){
    %>
    <script type="text/javascript" language="javascript">
        alert("邮箱不可为空");
        window.location='webapps/regist.jsp';
    </script>
    <%
        }
    %>
</body>
</html>
