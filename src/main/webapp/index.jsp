<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/11
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<form action="/user/login" method="post">
    <label for="username">昵称</label><input id="username" name="username" type="text">
    <label for="password">密码</label><input id="password" name="password" type="password">
    <button type="submit">确定</button>
</form>
</body>
</html>
