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
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap/bootstrap-theme.css">
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

        .fileinput-button {
            position: relative;
            display: inline-block;
            overflow: hidden;
        }

        .fileinput-button input{
            position:absolute;
            right: 0px;
            top: 0px;
            opacity: 0;
            -ms-filter: 'alpha(opacity=0)';
            font-size: 200px;
        }
    </style>
</head>
<body class="bg_image_main no_select">
<jsp:include page="common/header.jsp"></jsp:include>

<div class="login no_select">
    <div class="login_bg1">
        <form action="/image/addImage" method="post" class="" enctype="multipart/form-data">
            <div style="margin-bottom: 10px;color: #07558c;font-size: 30px;">添加相片：</div>
            <div class="write_textarea_article_content">
                <textarea style="vertical-align: top;width:30%;border-radius: 10px;font-size: 20px;" id="write_textarea_article_content" name="imagememo" placeholder="键入图片描述 / Enter Image Memo"></textarea>
                <div style="vertical-align: top;width: 40%;display: inline-block;height: 430px;background: #D0DDEF;border-radius: 10px;padding: 10px;">
                    <img id="img" style="display: inline-block;border: 4px solid #777777;width: 95%;height: 400px;" src="${path}/static/img/luesuotu.jpg"/>
                </div>
                <div style="vertical-align: top;width: 10%;display: inline-block;height: 430px;background: #D0DDEF;border-radius: 10px;padding: 10px;">
                    <div align="center" style="display: inline-block;"><span class="btn btn-success fileinput-button"><span>上传</span><input type="file"name="file" id="uploadImage"></span></div>
                </div>
            </div>
            <div class="write_textarea_article_button"><button type="submit" style="margin: 10px;">提交 / Submit</button></div>
        </form>
    </div>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>

<script src="${path}/static/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${path}/static/bootstrap/js/bootstrap.js"></script>
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


    $("#uploadImage").change(function () {
        var filePath = $(this).val();//获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
            src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式

        // 检查是否是图片
        if(!fileFormat.match(/.png|.jpg|.jpeg/)) {
            alert("上传错误,文件格式必须为：png/jpg/jpeg");
            return;
        }
        $("#img").attr("src",src);

    })

</script>
</body>
</html>
