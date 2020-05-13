<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/13
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>navi</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/home.css">
</head>
<body>
<div class="navi">
    <div class="header_main_page">
        <div id="heaher">My Blog</div>
        <div id="subheader" class="subheader_main_page"></div>
    </div>
    <a class="items" href="">
        <div>首页</div>
        <div>Home</div>
    </a>
    <c:if test="${sessionScope.userid == null}">
        <a class="items" href="">
            <div>登录</div>
            <div>Login</div>
        </a>
    </c:if>
    <c:if test="${sessionScope.userid != null}">
        <a class="items" href="">
            <div>用户菜单</div>
            <div>Menu</div>
        </a>
        <a class="items" href="">
            <div>退出</div>
            <div>Logout</div>
        </a>
    </c:if>
    <a class="items" href="">
        <div>相册</div>
        <div>Album</div>
    </a>
    <a class="items" href="">
        <div>博客日记</div>
        <div>Blog & Daily</div>
    </a>
    <a class="items" href="">
        <div>留言</div>
        <div>Message</div>
    </a>
    <a class="items" href="">
        <div>友情链接</div>
        <div>Link</div>
    </a>
</div>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/home.js" type="text/javascript"></script>

</body>
</body>
</html>
