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
    <title>header</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/home.css">
    <style type="text/css">
        #userMenu ul{
            float: top;

            width: inherit;

        }

        #userMenu ul li{
            width: inherit;

        }
        #userMenu a{color: #363636;font-size: 15px;}

        ._items{text-align: center;margin-left: auto;margin-right: auto;width: 100%;padding-top: 10px;padding-bottom: 10px}
        ._items a{text-decoration: none;}
    </style>
</head>
<body>
<div class="navi">
    <div class="header_main_page">
        <div id="heaher">My Blog</div>
        <div id="subheader" class="subheader_main_page"></div>
    </div>
    <a class="items" href="/index/home">
        <div>首页</div>
        <div>Home</div>
    </a>
    <c:if test="${sessionScope.userid == null}">
        <a class="items" href="/index/login">
            <div>登录</div>
            <div>Login</div>
        </a>
        <a class="items" href="/index/register">
            <div>注册</div>
            <div>Register</div>
        </a>
    </c:if>
    <c:if test="${sessionScope.userid != null}">
        <ul class="items" href="" id="userMenu" style="cursor:pointer;">
            <div>
                <div>用户菜单</div>
                <div>Menu</div>
            </div>
            <ul id="userMenuUl" style="list-style-type: none;text-decoration: none;background: white;display: none">
                <li class="_items" id="article_write"><a  href="#">写博文</a></li>
                <li class="_items" id="daily_write"><a  href="#">写日志</a></li>
                <li class="_items"><a  href="/user/logout">退出</a></li>
            </ul>
        </ul>
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
<script type="text/javascript">
    $("#userMenu").hover(
        function () {
            $("._items").css("background","buttonface");
            $("#userMenuUl").css("display","block");
            $(this).css("background","buttonface");
        },
        function () {
            $("._items").css("background","white");
            $(this).css("background","white");
            $("#userMenuUl").css("display","none");
        }
    )

    $("._items").hover(
        function () {
            $(this).css("background","#97cff7");
        },
        function () {
            $(this).css("background","buttonface");
        }
    )
</script>
</body>
</body>
</html>
