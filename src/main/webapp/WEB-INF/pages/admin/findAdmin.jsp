<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/6/3
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
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
    管理员查询 <a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px"
             href="javascript:location.replace(location.href);" title="刷新"> <i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th scope="col" colspan="6">管理员查询</th>
        </tr>
        <tr class="text-c">
            <th class="center">用户名</th>
            <th class="center">操作</th>
        </tr>
        </thead>
        <c:if test="${adminList.size()==0}">
            <tr class="text-c">
                <td class="center">无</td>
                <td class="center">无</td>
            </tr>
        </c:if>
        <c:forEach items="${adminList}" var="admin">
            <tr class="text-c">
                <td class="center">${admin.adminname}</td>
                <td><a onclick="getAdmin('${admin.adminid}')"><i class="Hui-iconfont">&#xe6df;</i></a>&nbsp;&nbsp;<a
                        onclick="deleteAdmin('${admin.adminid}')"><i
                        class="Hui-iconfont">&#xe6e2;</i></a></td>
            </tr>
        </c:forEach>

    </table>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <span class="r" style="cursor: pointer">${html} </span>
    </div>
    <div class="cl pd-5 mt-20"></div>
    <div class="text-c">
        <form action="admin/findAdminByCon" name="myform" method="post">
            查询条件： <span class="select-box" style="width: 200px;"><select name="cond" class="select">
						<option value="adminname">按用户名查询</option>
				</select></span>&nbsp;&nbsp;关键字<input type="text" name="name" required style="width: 200px" class="input-text" />
            <button type="submit" class="btn btn-success radius">
                <i class="Hui-iconfont">&#xe665;</i> 查询
            </button>
        </form>
    </div>
</div>
<script type="text/javascript">
    /*批量删除*/
    function datadel() {
        if (confirm('确定要删除吗?')) {
            document.myform.submit();
        }
    }

    //删除用户
    function deleteAdmin(adminid) {
        layer.confirm("确定要删除吗？",{icon:7,title:'警告'},function (index) {
            $.ajax({
                url:"admin/deleteAdmin",
                type:"POST",
                data:{
                    id:adminid,
                },
                success:function (sign) {
                    if(sign == "success"){
                        layer.msg('删除成功！',{time:500},function () {
                            location.reload();
                        });
                    }else {
                        layer.msg('删除失败！',{time:500});
                    }
                }
            })
            layer.close(index);
        })
    }

    //寻找用户
    function getAdmin(adminid) {
        $.post("admin/getAdminById",{adminid:adminid},function (res) {
            document.write(res);
        });
    }
</script>
</body>
</html>

