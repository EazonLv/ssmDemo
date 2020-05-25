<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/16
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>message</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content1{min-height: 560px;}
        .content_1{text-align: center;}
        .content_1{background-color: rgba(255,255,255,0.6);min-height: 200px;width: 97%;margin-right: auto;margin-left: auto;margin-top: 30px;}

        .content_1 > div{display: inline-block;margin: 20px;}
        .message_content_float_box{position: relative;border-radius: 15px;display: inline-block;background-color: rgba(255,255,255,0.6);border: 2px solid transparent;padding: 15px;cursor: pointer;}
        #showMessageDetailbtn{font-family: 幼圆;color: black;}
        .message_content_float_box span:nth-child(2){text-align:right;font-family: "Microsoft YaHei UI";color: #108ee9;font-size: 15px;display: inline-block}
        .message_content_float_box span:last-child{text-align:right;font-family: "Microsoft YaHei UI";color: #108ee9;font-size: 15px;display: inline-block}

    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content1">
    <div class="content_1" style="text-align: left">
        <c:forEach items="${messageList}" var="message">
            <div class="message_content_float_box" style="text-align: right;width: 45%;margin: 1%">
                <form action="/message/showMessageDetail" method="post" style="text-align: left;">
                    <input id="showMessageDetailbtn" style="cursor:pointer;display: inline-block;word-break: break-all;text-align: left;outline: none;background: none;border: none;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;max-width: 98%;" value="${message.message}" type="submit">
                    <input type="hidden" value="${message.messageid}" name="messageid">
                </form>
                <span style="width: 18%;display: inline-block;word-break: break-all;">${message.messagetime}</span>
                <span style="width: 18%;display: inline-block;word-break: break-all;">from ${message.username}</span>
            </div>
        </c:forEach>
    </div>
</div>



<jsp:include page="common/footer.jsp"></jsp:include>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script>
    $(document).ready(
        function () {
            $(".message_content_float_box").show(
                function () {
                    var rgba_r = parseInt(Math.random()*150+105)
                    var rgba_g = parseInt(Math.random()*150+105)
                    var rgba_b = parseInt(Math.random()*150+105)
                    $(this).css("background","rgba"+"("+rgba_r+","+rgba_b+","+rgba_g+","+"0.5"+")")
                }
            )
        }
    )

    $(".message_content_float_box").hover(
        function () {
            $(this).css("opacity","0.6")
        },
        function () {
            $(this).css("opacity","1")
        }
    )

    $(".message_content_float_box span:last-child").hover(
        function () {
            $(this).css("text-decoration","underline")
        },
        function () {
            $(this).css("text-decoration","none")
        }
    )

    console.log(document.body.clientHeight)
    console.log($(".navi").outerHeight(true))
    console.log($(".copyright").outerHeight(true))
    console.log($("#asdsaads").position())
    console.log($("#abxc").offset())
    console.log($(".message_content_float_box").width())
    console.log($(".message_content_float_box").height())
</script>
</body>
