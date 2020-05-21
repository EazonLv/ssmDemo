<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/5/21
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<c:set value="${sessionScope.get('userid')}" var="userid" scope="page"/>

<c:if test="${userid != null}">
    <div style="text-align: left;margin-bottom: 10px;color: #363636;font-size: 20px;background-color: rgba(255,255,255,0.6);padding:10px; ">欢迎用户${username}！</div>
</c:if>
