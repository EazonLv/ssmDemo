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
    <title>userAlbum</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content_{text-align: left;display: inline-block;}
        .content_ div{display: inline-block;margin-top: 15px;}
        .content_ img{width: 539px;height: 420px;border: 4px solid #777777;opacity: 0.8;}
    </style>
</head>
<body  class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content" style="width: 100%;text-align: center;">


    <div style="width: 100%;text-align: left;background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;display: inline-block;">
        ${username}的相册集：
        <a class="btn btn-success" href="/index/addAlbum">添加相册</a>
    </div>
    <c:if test="${noList == false}">
    <div class="content_" style="display: inline-block;text-align: center">
        <c:forEach items="${albumList}" var="a">
        <div style="height:574px;text-align:center;background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;">
            <img src="${path}/images/${a.albumcover}" alt="">
            <form action="/image/showAlbumImage" method="post">
                <input type="hidden" name="albumid" value="${a.albumid}">
                <input type="hidden" name="albumname" value="${a.albumname}">
                <input class="showAlbumImage" type="submit" style="display: block;text-align: left;font-size: 30px;cursor: pointer;border: none;background: none;outline: none;color: #363636;" value="${a.albumname}">
            </form>
            <div style="display: block;text-align: left">创建者：${a.username}</div>
            <div style="width:100%;display: block;text-align: left">备注：${a.albummemo}
                <form action="/image/showAlbumImage" method="post" style="display: inline-block">
                    <input type="hidden" name="albumid" value="${a.albumid}">
                    <input type="hidden" name="albumname" value="${a.albumname}">
                    <input type="submit" class="btn btn-success" style="outline: none;" value="查看相册">
                </form>
                <form action="/album/deleteAlbum" method="post" style="display: inline-block">
                    <input type="hidden" value="${a.albumid}" name="albumid">
                    <button type="submit" class="btn btn-danger deleteAlbum" style="outline: none;">删除相册</button>
                </form>
            </div>
        </div>
        </c:forEach>
    </div>
    </c:if>
    <c:if test="${noList == true}">
        <div style="margin-top:10px;width: 100%;text-align: left;background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;display: inline-block;">
            暂无内容
        </div>
    </c:if>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script type="text/javascript">
    $(".showAlbumImage").hover(function () {
        $(this).css("color","#871F78")
    },function () {
        $(this).css("color","#363636")
    })

    $(".deleteAlbum").click(function () {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            return true;
        }else{
            return false;
        }
    })
</script>
</body>
</html>
