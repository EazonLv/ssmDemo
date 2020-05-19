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
    <title>addImage</title>
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

        .ft_l_topbar .ft_topbar_btn {
            position: relative;
            margin-top: 3px;
            height: 26px;
            line-height: 26px;
            line-height: 25px\0;
            overflow: hidden;
        }
        .btn_blue {
            border: 1px solid #1d567d;
            color: #fff;
            color: #fff!important;
            background: #2e89c5;
            background: -moz-linear-gradient(top,#2a96d8 0%,#257db9 90%,#2e89c5 100%);
            background: -webkit-linear-gradient(top,#2a96d8 0%,#257db9 90%,#2e89c5 100%);
            background: -o-linear-gradient(top,#2a96d8 0%,#257db9 90%,#2e89c5 100%);
            background: -ms-linear-gradient(top,#2a96d8 0%,#257db9 90%,#2e89c5 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2a96d8',endColorstr='#0169a9',GradientType=0 );
            background: linear-gradient(top,#2a96d8 0%,#257db9 90%,#2e89c5 100%);
        }
        @media screen and (-webkit-min-device-pixel-ratio: 0)
            .btn_blue, .btn_red, .btn_gray {
                font-family: "lucida Grande",Verdana,"Microsoft Yahei";
            }
            .btn_blue, .btn_red, .btn_gray {
                display: inline-block;
                height: 22px;
                min-width: 24px;
                line-height: 24px;
                line-height: 23px\9\0;
                *line-height: 24px;
                _line-height: 26px;
                _overflow-y: hidden;
                padding: 0 12px;
                margin: 0;
                text-align: center;
                text-decoration: none;
                vertical-align: middle;
                cursor: default;
                -moz-user-select: none;
                -webkit-user-select: none;
                border-radius: 3px;
                border-radius: 0\9\0;
            }
            .right, .qm_right {
                float: right;
            }
            a, a:link, a:visited {
                color: #4e5d80;
            }
            a {
                text-decoration: none;
                cursor: pointer;
                outline: none;
            }
            input, textarea, a {
                outline: none;
            }
            select, body, textarea {
                background-color: #fff;
                font-size: 12px;
            }
            td, input, button, select, body {
                font-family: "lucida Grande",Verdana,"Microsoft YaHei";
                font-size: 12px;
                -webkit-font-smoothing: subpixel-antialiased;
            }

    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="login no_select">
    <div class="login_bg1">
        <form action="/image/addImage" method="post" class="" enctype="multipart/form-data">
            <div style="margin-bottom: 10px;color: #07558c;font-size: 30px;">添加相片：</div>
            <input type="file" name="file">
            <div class="write_textarea_article_content">
                <textarea style="border-radius: 10px;font-size: 20px;" id="write_textarea_article_content" name="imagememo" placeholder="键入图片描述 / Enter Image Memo"></textarea>
            </div>
            <div class="write_textarea_article_button"><button type="submit" style="margin: 10px;">提交 / Submit</button></div>
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
    $(".write_textarea_article_button button:last-child").click(
        function () {
            var content = $("#write_textarea_article_content").val();


            if(content == "" || content ==null){
                alert("留言内容不能为空！");
                return false;
            }
        }
    )

    $(".login_bg1 input").attr("autocomplete","off");

    $("#uploadBtn").hover(
        function () {
            $(this).css("opacity","0.4");
        },
        function () {
            $(this).css("opacity","1");
        }
    );
</script>
</body>
</html>
