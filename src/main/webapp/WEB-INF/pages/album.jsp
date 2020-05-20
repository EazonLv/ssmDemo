<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/5/19
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>album</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content_{text-align: center;display: inline-block;}
        .content_ div{width: 48%;display: inline-block;margin-top: 15px;}
        .content_ img{width: 98%;border: 4px solid #777777;opacity: 0.8;}
    </style>
</head>
<body  class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content">
    <div class="content_" style="display: inline-block;">
        <div style="background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;">
            <img src="${path}/static/img/ChMkJ1bKwXaIXdnDAAjG6xki36wAALGYgPXmb0ACMcD412.jpg" alt="">
            <div style="display: block">默认相册</div>
            <div style="display: block">创建者：</div>
            <div style="display: block">备注：</div>
        </div>


    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
</body>
</html>
