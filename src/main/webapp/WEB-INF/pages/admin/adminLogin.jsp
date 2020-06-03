<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/5/25
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>

    <link href="${path}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/static/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        body{
            background: url("../../../static/img/ChMkJlah6X-IAJcGAAZUnA1iRNIAAHjswLGLusABlS0077.jpg");
            animation-name:myfirst;
            animation-duration:30s;
            /*变换时间*/
            animation-delay:0s;
            /*动画开始时间*/
            animation-iteration-count:infinite;
            /*下一周期循环播放*/
            animation-play-state:running;
            /*动画开始运行*/

        }
        @keyframes myfirst
        {
            0%   {background:url("../../../static/img/ChMkJlah6X-IAJcGAAZUnA1iRNIAAHjswLGLusABlS0077.jpg");}
            34%  {background:url("../../../static/img/cdb3076b6b57a3680172ffb52f6419a4.jpg");}
            67%  {background:url("../../../static/img/eaa929f9ec5a0407f28ba952c1a59190.jpg");}
            100% {background:url("../../../static/img/ChMkJlah6X-IAJcGAAZUnA1iRNIAAHjswLGLusABlS0077.jpg");}
        }
        .form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
        /*阴影*/
        .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:26px;}
        .checkbox{padding-left:21px;}
    </style>



</head>
<body>
<div class="container">
    <form action="/admin/login" method="post" class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title" >管理员登录</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="用户名" id="adminname" name="adminname" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="密码" id="password" name="password" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>记住我
                    </label>
                </div>
                <div class="form-group col-md-offset-9">
                    <button type="submit" class="btn btn-success pull-right" name="submit" style="outline: none;" id="login_button">登录</button>
                </div>
            </div>
        </div>
    </form>
</div>
<div style="width:100%;position:fixed;bottom:0;left:0;color: #0f0f0f;padding: 5px;">powered by LvYicong</div>
<script src="${path}/static/js/jquery-3.3.1.js"></script>
<script src="${path}/static/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $("#login_button").click(function () {
        var adminname = $("input[name='adminname']").val();
        var password = $("input[name='password']").val();
        if (adminname == "" || adminname ==null){
            alert("用户名不能为空");
            return false;
        }
        if (password == "" || password ==null){
            alert("密码不能为空");
            return false;
        }
        <%--if('<%request.getAttribute("sign");%>' == 1){--%>
        <%--alert("恭喜登录成功");--%>
        <%--location.reload();--%>
        <%--}--%>
        //在response/message中显示登录成功
    })
</script>
</body>
</html>



