<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/11
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html >
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" href="${path}/css/reset.css">
    <link rel="stylesheet" href="${path}/css/self_defined_setting.css">
    <style>
        html{height: 100%}
    </style>
</head>
<body class="bg_image no_select">
<div class="header">
    My Blog
    <div id="subheader" class="subheader"></div>
</div>
<div class="login">
    <div class="login_title">Welcome, my friend!</div>
    <div class="login_bg" style="height: 500px;">
        <div>
            '<!--这个点很重要-->
            <div class="welcome_content">
                <div id="welcome_content_CHS"><p>一些小心情</p><p>一些小文字</p><p>一些小分享</p><p>一些小快乐</p></div>
                <div style="border: 1px solid black;border-width:2px;height: 145px;margin-left: auto;margin-right: auto;"></div>
                <div id="welcome_content_EN"><p>a Little Emotions</p><p>a Little Words</p><p>a Little Sharings</p><p>a Little Happiness</p></div>
            </div>
            <div id="welcome_navi"><button style="cursor: pointer" onclick="javascrtpt:window.location.href='${path}/index/home'">开启一段奇妙之旅<br/>Let's begin</button><button style="cursor: pointer">管理员登录<br/>Manager Login</button></div>
        </div>
    </div>
</div>
<script src="${path}/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/js/common.js" type="text/javascript"></script>
<script src="${path}/js/welcome_page.js" type="text/javascript"></script>
</body>
</html>