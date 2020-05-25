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
    <title>userMessageDetail</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <style>
        html{height: 100%}
        .content_{text-align: left;display: inline-block;}
        .content_ div{width: 100%;display: inline-block;margin-top: 15px;}
        .content_ img{width: 98%;border: 4px solid #777777;opacity: 0.8;}
        #write_textarea_article_content{resize:none;width: 80%;height: 430px;margin-left: auto;margin-right: auto;border: none;padding: 10px;border-radius: 10px;background: #D0DDEF;}
        #write_textarea_article_content:focus{outline: none;}
    </style>
</head>
<body  class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="content" style="width: 100%">
    <div style="width: 100%;text-align: left;background: rgba(255,255,255,0.6);padding: 10px;border-radius: 10px;display: inline-block;">
        <h1 style="font-family: 黑体;font-size: 50px;text-align: left">${message.username}的留言：</h1>
        <p style="padding: 2%;font-size: 30px;text-align: left;">
            ${message.message}
            <span style="font-family: RBNo2;font-size: 30px;text-align: center">（on ${message.messagetime}）</span>
        </p>

        <h1 style="font-family: 黑体;font-size: 40px;text-align: center;color: #1b6d85;text-align: left">回复：</h1>
        <c:if test="${msgleavewordList.size()>0}">
            <c:forEach items="${msgleavewordList}" var="msglwd">
            <p style="padding: 2%;font-size: 30px;text-align: left;">
                ${msglwd.leaveword}
                <span style="font-family: RBNo2;font-size: 30px;text-align: center">（form ${msglwd.username} on ${msglwd.msgleavewordtime}）</span>
            </p>
            </c:forEach>
        </c:if>
        <c:if test="${msgleavewordList.size()==0}">
            <div style="padding: 2%;font-size: 30px;text-align: left;">暂无内容</div>
        </c:if>

        <form action="/msgleaveword/addMsgleaveword" method="post" style="display: block;text-align: center;margin-top: 200px;">
            <h1>回复留言：</h1>
            <input type="hidden" name="username" value="${username}">
            <input type="hidden" name="userid" value="${userid}">
            <input type="hidden" name="messageid" value="${message.messageid}">
            <textarea name="leaveword" id="write_textarea_article_content" placeholder="键入回复 / Enter Leaveword"></textarea>
            <button type="submit" class="btn btn-success" id="reply">回复</button>
        </form>

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

    $("#reply").click(
        function () {
            var content = $("#write_textarea_article_content").val();


            if(content == "" || content ==null){
                alert("回复内容不能为空！");
                return false;
            }
        }
    )



</script>
</body>
</html>
