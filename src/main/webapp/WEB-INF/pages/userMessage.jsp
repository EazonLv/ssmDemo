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
    <title>userMessage</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
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


<div class="content" style="width: 100%">
    <div style="text-align: left;margin-bottom: 10px;color: #204d74;font-size: 30px;background-color: rgba(255,255,255,0.6);padding:10px; ">我的留言：
        <a href="/index/addMessage" style="outline: none" class="btn btn-success">添加留言</a>
    </div>

    <c:forEach items="${messages}" var="m">
        <div class="subitem_summary" style="cursor: pointer;text-align: left">
            <div class="subitem_summary" style="cursor: pointer;background-color: rgba(255,255,255,0.6);margin-bottom: 10px;">
                <a style="background-color: transparent;display: inline-block" class="subitem_summary_title" href="#">from${m.username}</a>
                <div style="width:100%;display:block;background-color: transparent" class="subitem_summary_content">${m.message}
                    <form action="/message/showUserMessageDetail" style="display: inline-block;align-self: left" method="post">
                        <input type="hidden" name="messageid" value="${m.messageid}">
                        <input type="submit" class="btn btn-success" style="outline: none" value="查看回复">
                    </form>
                    <form action="/message/deleteMessage" style="display: inline-block;align-self: left" method="post">
                        <input type="hidden" name="messageid" value="${m.messageid}">
                        <input type="submit" class="btn btn-danger" style="outline: none" value="删除留言">
                    </form>

                </div>
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
