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
    <title>userArticleView</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/home.css">
    <link rel="stylesheet" href="${path}/static/css/blog_and_daily.css">

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

        .write_textarea_article_button button{padding-left: 5px;padding-right: 5px;padding-top: 10px;padding-bottom: 10px;width: 155px;border:none;border-radius: 10px;background: #108ee9;cursor: pointer;color: #dddddd;font-size: 15px;}

        .login_bg1{background-color: rgba(255,255,255,0.6);padding: 25px;}

        textarea::-webkit-scrollbar {width: 4px;height: 4px;}
        textarea::-webkit-scrollbar-thumb {-webkit-box-shadow: inset 0 0 2px rgba(0,0,0,0.2);background: #777777;}
        textarea::-webkit-scrollbar-track {-webkit-box-shadow: inset 0 0 2px rgba(0,0,0,0.2);border-radius: 10px;background: #ffffff;}
    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>


<div class="login no_select">
    <div class="login_bg1">
        <form action="/article/updateArticle" method="post" class="">
            <div style="margin-bottom: 10px;color: #07558c;font-size: 30px;">更新博文：</div>
            <div class="write_textarea_article_title">
                <input type="text" id="write_textarea_article_title" name="title" value="${article.title}" onchange="isChange()">
            </div>
            <div class="write_textarea_article_content">
                <textarea id="write_textarea_article_content" name="content" onchange="isChange()">${article.content}</textarea>
            </div>
            <input type="hidden" name="articleid" value="${article.articleid}"/>
            <input type="hidden" name="userid" value="${article.userid}"/>
            <div class="write_textarea_article_button" ><button type="submit" id="s_button" style="margin: 10px; background: #777777;cursor: no-drop;" disabled="disabled">更新 / Update</button></div>
            <%--<div class="write_textarea_article_button"><button type="button" style="margin: 10px;"  onclick="location.href='/article/updateArticle'">更新 / Update</button></div>--%>
        </form>
    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/home.js" type="text/javascript"></script>
<script src="${path}/static/js/manager_login.js" type="text/javascript"></script>
<script src="${path}/static/js/blog_and_daily.js" type="text/javascript"></script>
<script type="text/javascript">
    var title_ = $("#write_textarea_article_title").val();
    var content_ = $("#write_textarea_article_content").val();
    //判空
    $(".write_textarea_article_button button:last-child").click(
        function () {
            var title = $("#write_textarea_article_title").val();
            var content = $("#write_textarea_article_content").val();

            if(title == "" || title ==null){
                alert("标题不能为空！");
                return false;
            }
            if(content == "" || content ==null){
                alert("内容不能为空！");
                return false;
            }
        }
    )

    $(".login_bg1 input").attr("autocomplete","off");

    //判断输入框是否有变化以此改变按钮是否可用
    function isChange() {
        var title__ = $("#write_textarea_article_title").val();
        var content__ = $("#write_textarea_article_content").val();

        if(title__!= title_ || content__!=content_){
            $("#s_button").removeAttr("disabled")
            $("#s_button").css("background","#108ee9")
            $("#s_button").css("cursor","pointer")
        }else{
            $("#s_button").attr("disabled","disabled")
            $("#s_button").css("background","#777777")
            $("#s_button").css("cursor","no-drop")
        }
    }
</script>


</body>
</html>
