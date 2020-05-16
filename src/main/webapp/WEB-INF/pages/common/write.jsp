<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/14
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${path}/static/css/reset.css">
    <link rel="stylesheet" href="${path}/static/css/self_defined_setting.css">
    <link rel="stylesheet" href="${path}/static/css/blog_and_daily.css">
    <style type="text/css">
        .write_textarea_article_button button{padding-left: 5px;padding-right: 5px;padding-top: 10px;padding-bottom: 10px;width: 155px;border:none;border-radius: 10px;background: #108ee9;cursor: pointer;color: #dddddd;font-size: 15px;}
    </style>
</head>
<body>
<div class="content no_select">
    <div class="content_" style="">
        <form action="/article/addArticle" method="post" class="write_textarea_article">
            <div><span class="write_textarea_article_cross">×</span></div>
            <div class="write_textarea_article_title">
                <input type="text" id="write_textarea_article_title" name="title" placeholder="键入标题 / Enter Title">
            </div>
            <div class="write_textarea_article_content">
                <textarea id="write_textarea_article_content" name="content" placeholder="键入正文 / Enter Content"></textarea>
            </div>
            <div class="write_textarea_article_button"><button type="submit">提交 / Submit</button></div>
        </form>
        <div class="write_textarea_daily">
            <div><span class="write_textarea_daily_cross">×</span></div>
            <div class="write_textarea_article_title">
                <input type="text" id="write_textarea_daily_title" placeholder="键入日期 / Enter Date">
            </div>
            <div class="write_textarea_article_content">
                <textarea id="write_textarea_daily_content" placeholder="键入日志内容 / Enter Daily Content"></textarea>
            </div>
            <div class="write_textarea_article_button"><button>添加图片 / Pictures</button><button>提交 / Submit</button></div>
        </div>
    </div>
</div>
<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/js/common.js" type="text/javascript"></script>
<script src="${path}/static/js/blog_and_daily.js" type="text/javascript"></script>
<script type="text/javascript">
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
            if('<%request.getAttribute("sign");%>' == 1){
                alert("恭喜提交成功！");
                location.reload();
            }

        }
    )
</script>
</body>
</html>

