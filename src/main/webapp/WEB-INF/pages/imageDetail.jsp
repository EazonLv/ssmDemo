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
    <title>imageDetail</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content_{text-align: left;display: inline-block;}
        .content_ div{width: 100%;display: inline-block;margin-top: 15px;vertical-align: }
        .content_ img{width: 98%;border: 4px solid #777777;opacity: 0.8;}
    </style>
</head>
<body  class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content" style="width: 100%">
    <div style="width: 100%;text-align: left;background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;display: inline-block;">
        <div>${image.albumname}:</div>
    </div>
    <div class="content_" style="display: inline-block;text-align: center">
            <div style="background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;">
                <img src="${path}/images/${image.imageurl}" alt="">
                <%--<form action="">--%>
                    <%--<input type="hidden" name="albumid" value="${image.imageid}">--%>
                    <%--<input class="showAlbumImage" type="submit" style="display: block;text-align: left;font-size: 30px;cursor: pointer;border: none;background: none;outline: none;color: #363636;" value="删除图片">--%>
                <%--</form>--%>
                <div style="display: block;text-align: left">备注：${image.imagememo}</div>
            </div>
    </div>
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
</script>
</body>
</html>
