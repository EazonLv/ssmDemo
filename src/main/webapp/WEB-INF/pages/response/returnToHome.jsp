<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/16
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <title>returnToHome</title>
</head>
<body>
<script language="javascript">
    alert("<%=request.getSession().getAttribute("message")%>")
    location.assign("${path}/index/home")

</script>
</body>
</html>
