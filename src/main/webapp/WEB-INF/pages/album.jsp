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
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content_{text-align: center;display: inline-block;}
        .content_ div{display: inline-block;margin-top: 15px;}
        .content_ img{width: 560px;height: 357px;border: 4px solid #777777;opacity: 0.8;}
    </style>
</head>
<body  class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content" style="width: 100%">
    <div style="text-align: center;margin-bottom: 10px;color: #07558c;font-size: 30px;background-color: rgba(255,255,255,0.6);padding:10px; ">所有相册：</div>

    <div class="content_" style="display: inline-block;">
        <c:forEach items="${albumList}" var="a">
        <div style="background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;">
            <img src="${path}/images/${a.albumcover}" alt="">
            <div style="display: block;text-align: left">${a.albumname}</div>
            <div style="display: block;text-align: left">创建者：${a.username}</div>
            <div style="display: block;text-align: left">备注：${a.albummemo}
                <form action="/image/showAlbumImage_" method="post" style="display: inline-block">
                    <input type="hidden" name="albumid" value="${a.albumid}">
                    <input type="hidden" name="albumname" value="${a.albumname}">
                    <input type="submit" class="btn btn-success" style="outline: none;" value="查看相册">
                </form>
            </div>
        </div>
        </c:forEach>

    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
</body>
</html>
