<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>管理员信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="${path}/admin/addAdminPre" data-title="新增管理员" href="javascript:void(0)">新增管理员</a></li>
					<li><a data-href="${path}/admin/getAllAdmin" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>
					<li><a data-href="${path}/admin/findAdminByCon" data-title="管理员查询" href="javascript:void(0)">管理员信息查询</a></li>
				</ul>
			</dd>
		</dl>





	</div>
</aside>


