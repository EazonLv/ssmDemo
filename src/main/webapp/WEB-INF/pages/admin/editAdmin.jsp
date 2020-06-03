<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh_CN">
<head>
    <base href="<%=basePath%>" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎使用后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="static/h-ui/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui/h-ui.admin/css/style.css" />
    <script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="static/h-ui/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="static/h-ui/h-ui.admin/js/H-ui.admin.js"></script>
    <script type="text/javascript" src="static/layer/layer.js"></script>
</head>
<body>
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>管理员管理 <span class="c-gray en">&gt;</span>
    管理员列表 <span class="c-gray en">&gt;</span>编辑管理员<a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px"
            href="admin/getAdminById.action?id=${admin.adminid }" title="刷新"> <i class="Hui-iconfont">&#xe68f;</i>
</a> &nbsp;&nbsp; &nbsp;<a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px"
                           href="admin/getAllAdmin" title="返回"> <i class="Hui-iconfont">&#xe66b;</i></a>
</nav>
<article class="page-container">
    <form class="form form-horizontal" id="form-article-add" name="myform">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">用户名</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" name="adminname" class="input-text" id="adminname" value="${admin.adminname}" />
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">密码</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="password" name="password" class="input-text" id="password"/>
            </div>
        </div>

        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <input type="hidden" name="adminid" id="adminid" value="${admin.adminid}" />
                <input type="hidden" id="basepath" value="<%=basePath%>" />
                <button id="sub" class="btn btn-secondary radius" type="button">
                    <i class="Hui-iconfont">&#xe632;</i>提交保存
                </button>
                <button id="res" class="btn btn-default radius" type="reset">
                    <i class="Hui-iconfont">&#xe68f;</i>取消重置
                </button>
            </div>
        </div>
    </form>
</article>
<script type="text/javascript">
    $("#sub").click(function () {
        var adminname = $("input[name='adminname']").val();
        var password = $("input[name='password']").val();
        if (adminname == "" || adminname == null) {
            layer.msg("用户名不能为空");
            return false;
        }
        if (password == "" || password == null) {
            layer.msg("密码不能为空");
            return false;
        }

        $.ajax({
            url:"admin/updateAdmin",
            type:"POST",
            data:{
                adminid : $("#adminid").val(),
                adminname : $("#adminname").val(),
                password : $("#password").val()},
            success:function (sign) {
                if(sign == "success"){
                    layer.msg('保存成功！',{time:500}),function () {
                        location.reload();
                    };
                }else if(sign =="pwd wrong"){
                    layer.msg('保存失败！密码错误',{time:500});
                }else{
                    layer.msg('保存失败！',{time:500});
                }
            }
        })
    })

</script>
</body>
</html>

