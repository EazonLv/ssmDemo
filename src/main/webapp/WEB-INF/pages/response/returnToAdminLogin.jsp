<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/6/1
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <title>returnToAdminLogin</title>
</head>
<body>
<script type="text/javascript">
    alert("<%=request.getSession().getAttribute("message")%>")
    location.assign("${path}/admin/loginPre")
</script>

</body>
</html>
