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
    <title>article</title>
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

        .article_write{display:inline-block;cursor:pointer;padding-left: 15px;padding-right: 15px;padding-top: 5px;padding-bottom: 5px;border:none;border-radius: 5px;background-color: #0ba194;margin-top: 10px;font-size: 17px;font-family: RBNo2;width: 150px;margin-right: 10px;}
        .article_write:focus{outline: none;}
        .article_write a{position: relative;bottom: 1px;font-family: 幼圆;margin-right: 2px;font-size: 15px;}
    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>


<div class="content">
    <div style="text-align: center;margin-bottom: 10px;color: #07558c;font-size: 30px;background-color: rgba(255,255,255,0.6);padding:10px; ">所有博文：</div>

    <c:forEach items="${articleAndWriters}" var="a">
        <div class="subitem_summary" style="cursor: pointer;text-align: left">
            <div class="subitem_summary" style="cursor: pointer;background-color: rgba(255,255,255,0.6);margin-bottom: 10px;">
                <form action="/article/showArticleDetail" method="post" style="display: inline-block;">
                    <input type="hidden" name="articleid" value="${a.articleid}">
                    <input style="background-color: transparent;display: inline-block;outline: none;border: none;cursor: pointer;" class="subitem_summary_title" value="标题：${a.title}" type="submit">
                </form>
                <div style="margin:10px;background-color: transparent;font-size: 25px;text-align: left;font-style: italic;display: inline-block;font-family: monospace;">作者：${a.writer}</div>
                <div style="background-color: transparent;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;max-width: 98%;" class="subitem_summary_content">${a.content}</div>
            </div>
        </div>
    </c:forEach>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/home.js" type="text/javascript"></script>
<script type="text/javascript">
    $(".article_write").hover(
        function () {
            $(this).css("opacity","0.4")
        },
        function () {
            $(this).css("opacity","0.8")
        }
    )
</script>

</body>
</html>
