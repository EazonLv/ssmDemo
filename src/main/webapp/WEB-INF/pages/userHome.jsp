<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/15
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <title>home</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/home.css">
    <style type="text/css">

    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>
    <div class="content">

        <div class="content_">
            <div class="left_content">
                <div class="subitem_album">
                    <h1 class="subitem_subheader" id="subitem_title_album">相册 <span>·</span><span style="font-family: monospace">  Album</span></h1>
                    <div class="subitem_album_hr"></div>
                    <div style="background-color: transparent;padding-left: 5px;padding-right: 5px;" id="subitem_album">
                        <div style="display: inline-block;padding: 10px;border-radius: 10px;">
                            <c:forEach items="${albumList}" var="albumList" begin="0" end="2">
                            <div style="background: none;border-radius: 10px;">
                                <form action="/image/showAlbumImage_" method="post" style="display: inline-block">
                                    <input type="hidden" name="albumid" value="${albumList.albumid}">
                                    <input type="hidden" name="albumname" value="${albumList.albumname}">
                                    <input type="submit" class="showAlbumImage" style="display: inline-block;text-align: left;font-size: 20px;cursor: pointer;border: none;background: none;outline: none;color: #363636;" value="${albumList.username}的相册（${albumList.albumname}）">
                                </form>
                                <img src="${path}/images/${albumList.albumcover}" alt="">
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="subitem_message">
                    <h1 class="subitem_subheader" id="subitem_title_message">留言 <span>·</span><span style="font-family: monospace">  Message</span></h1>
                    <div class="subitem_message_hr"></div>
                    <div style="background-color: transparent;word-break: break-all;padding-left: 5px;padding-right: 5px;" id="subitem_message">
                        <c:forEach items="${messages}" var="message" begin="0" end="4">
                            <form action="/message/showMessageDetail" method="post">
                                <input type="hidden" name="messageid" value="${message.messageid}">
                                <button type="submit" style="cursor:pointer;text-align: left;padding: 10px;background-color: #dddddd;border-radius: 10px;outline: none;display: block;width: 100%">${message.message}<br/><span>${message.messagetime}</span>&nbsp;&nbsp;<span>from ${message.username}</span></button>
                            </form>
                        </c:forEach>
                    </div>
                </div>

            </div>
            <div class="right_content">
                <h1 class="subitem_subheader" style="text-align: center;padding-top: 10px;padding-bottom:10px;font-family: '幼圆';background-color: rgba(255,255,255,0.6);margin-bottom: 10px;">博文 <span>·</span><span style="font-family: monospace">  Article</span></h1>
                <c:forEach items="${articleAndWriters}" var="a" begin="0" end="14">
                    <div class="subitem_summary" style="cursor: pointer;text-align: left;">
                        <div class="subitem_summary" style="cursor: pointer;">
                            <form action="/article/showArticleDetail" method="post" style="display: inline-block;">
                                <input type="hidden" name="articleid" value="${a.articleid}">
                                <input style="background-color: transparent;display: inline-block;outline: none;border: none;cursor: pointer;" class="subitem_summary_title" value="标题：${a.title}" type="submit">
                            </form>
                            <div style="margin:10px;background-color: transparent;font-size: 25px;text-align: left;font-style: italic;display: inline-block;font-family: monospace;">作者：${a.writer}</div>
                            <div class="subitem_summary_content" style="background-color: transparent;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;max-width: 95%;" >${a.content}</div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>

<jsp:include page="common/footer.jsp"></jsp:include>

<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/home.js" type="text/javascript"></script>
<script type="text/javascript">
    $(".showAlbumImage").hover(function () {
        $(this).css("color","#871F78")
    },function () {
        $(this).css("color","#363636")
    })

    $(".subitem_message button").hover(function () {
        $(this).css("opacity","0.7")
    },function () {
        $(this).css("opacity","1")
    })
</script>
</body>
</html>
