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
    <title>userArticle</title>
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

    <div style="text-align: left;margin-bottom: 10px;color: #204d74;font-size: 30px;background-color: rgba(255,255,255,0.6);padding:10px; ">我的博文：
        <a href="/index/addArticle" style="outline: none" class="btn-success btn">添加博文</a>
    </div>

    <c:forEach items="${articles}" var="a">
        <div class="subitem_summary" style="cursor: pointer;text-align: left">
            <div class="subitem_summary" style="cursor: pointer;background-color: rgba(255,255,255,0.6);margin-bottom: 10px;">
                <div style="width:100%;background-color: transparent;display:block;padding: 10px;font-size: 30px;text-decoration: none;color: #07558c;word-break: break-all;">标题：${a.title}
                    <form action="/article/showArticleDetail" style="display: inline-block;" method="post">
                        <input type="hidden" name="articleid" value="${a.articleid}">
                        <input type="submit" class="btn btn-success" style="outline: none;" value="查看博文">
                    </form>
                    <form action="/article/editArticle" style="display: inline-block;align-self: left" method="post">
                        <input type="hidden" name="articleid" value="${a.articleid}">
                        <input type="submit" class="btn btn-success" style="outline: none" value="更新博文">
                    </form>
                    <form action="/article/deleteArticle" style="display: inline-block;align-self: left" method="post">
                        <input type="hidden" name="articleid" value="${a.articleid}">
                        <input type="submit" class="btn btn-danger deleteArticle" style="outline: none" value="删除博文">
                    </form>
                </div>

                <div style="background-color: transparent" class="subitem_summary_content">${a.content}</div>
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

    $(".deleteArticle").click(function () {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            return true;
        }else{
            return false;
        }
    })

    // //用form表单提交
    // function doPost(to, p) { // to:提交动作（action）,p:参数
    //     var myForm = document.createElement("form");
    //     myForm.method = "post";
    //     myForm.action = to;
    //     for (var i in p){
    //         var myInput = document.createElement("input");
    //         myInput.setAttribute("articleid", i); // 为input对象设置name
    //         myInput.setAttribute("value", p[i]); // 为input对象设置value
    //         myForm.appendChild(myInput);
    //     }
    //     document.body.appendChild(myForm);
    //     myForm.submit();
    //     document.body.removeChild(myForm); // 提交后移除创建的form
    // }

    // //用ajax提交
    // $("#showDetail").on("click",function(event){
    //     event.preventDefault(); // 使a自带的方法失效，即无法发出请求
    //     $.ajax({
    //         type: "POST", // 使用post方式
    //         url: "/article/showUserArticleView",
    //         data: JSON.stringify({articleid:value1, param2:value2}), // 参数列表，stringify()方法用于将JS对象序列化为json字符串
    //         dataType:"json",
    //         success: function(result){
    //         // 请求成功后的操作
    //         },
    //         error: function(result){
    //         // 请求失败后的操作
    //         }
    //     });
    // });

</script>

</body>
</html>
