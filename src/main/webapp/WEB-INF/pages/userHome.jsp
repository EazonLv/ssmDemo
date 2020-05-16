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
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>
    <div class="content">
        <div class="content_">
            <div class="left_content">
                <div class="subitem_about_me">
                    <h1 class="subitem_subheader" id="subitem_title_about_me">关于我 <span>·</span><span style="font-family: monospace">  About Me</span></h1>
                    <div class="subitem_about_me_hr"></div>
                    <div style="background-color: transparent;word-break: break-all;padding-left: 5px;padding-right: 5px;cursor: default;"><img src="${path}/static/img/my_photo.jpg" id="photo" style="float: left;">关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我关于我</div>
                </div>
                <div class="subitem_album">
                    <h1 class="subitem_subheader" id="subitem_title_album">相册 <span>·</span><span style="font-family: monospace">  Album</span></h1>
                    <div class="subitem_album_hr"></div>
                    <div style="background-color: transparent;padding-left: 5px;padding-right: 5px;" id="subitem_album"></div>
                </div>
                <div class="subitem_message">
                    <h1 class="subitem_subheader" id="subitem_title_message">留言 <span>·</span><span style="font-family: monospace">  Messagee</span></h1>
                    <div class="subitem_message_hr"></div>
                    <div style="background-color: transparent;word-break: break-all;padding-left: 5px;padding-right: 5px;" id="subitem_message">
                        <div>留言留言留言留言留言留言留言...<br/><span>from XXX</span></div>
                    </div>
                </div>
                <div class="subitem_contact">
                    <h1 class="subitem_subheader">联系作者 <span>·</span><span style="font-family: monospace">  Contact</span></h1>
                    <div class="subitem_contact_hr"></div>
                    <div style="background-color: transparent;word-break: break-all;text-align: center" id="subitem_contact">
                        <img src="${path}/static/img/qrcode_1534149589702.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="right_content">
                <c:forEach items="${articleAndWriters}" var="a" begin="0" end="9">
                    <div class="subitem_summary" style="cursor: pointer">
                        <div class="subitem_summary" style="cursor: pointer">
                            <a style="background-color: transparent;display: inline-block" class="subitem_summary_title" href="#">标题：${a.title}</a>
                            <div style="background-color: transparent;font-size: 25px;text-align: left;font-style: italic;display: inline-block;font-family: monospace">作者：${a.writer}</div>
                            <div style="background-color: transparent" class="subitem_summary_content">${a.content}</div>
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
</body>
</html>
