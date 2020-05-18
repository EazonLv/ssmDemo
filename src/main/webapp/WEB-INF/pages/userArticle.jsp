<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/13
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>userArticle</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/home.css">

    <style>
        /*实现背景大小随窗口变化而变化*/
        html{height: 100%;}
        .bg_image{height: auto;
            background: url(${path}/static/img/bc7d5760d4c9ab2a121afb647c218a84.jpg) no-repeat center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            color: rgba(255, 255, 255, .1)
        }

        form{text-align: center;}

        .login_bg{
            height: 300px;
        }

        #login_button{width: 400px}
    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>


<div class="content">
    <div style="text-align: center;margin-bottom: 10px;color: #07558c;font-size: 30px;background-color: rgba(255,255,255,0.6);padding:10px; ">我的博文：</div>
    <c:forEach items="${articles}" var="a">
        <div class="subitem_summary" style="cursor: pointer">
            <div class="subitem_summary" style="cursor: pointer;background-color: rgba(255,255,255,0.6);margin-bottom: 10px;">
                <a style="background-color: transparent;display: inline-block" class="subitem_summary_title" href="/article/showUserArticleView?articleid=${a.articleid}">标题：${a.title}</a>
                <div style="background-color: transparent" class="subitem_summary_content">${a.content}</div>
            </div>
        </div>
    </c:forEach>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/home.js" type="text/javascript"></script>

</body>
</html>
