<%--
  Created by IntelliJ IDEA.
  User: ywlife
  Date: 2020/5/18
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <title>returnToUserArticle</title>
</head>
<body>
<script language="javascript">
    alert("<%=request.getSession().getAttribute("message")%>")
    location.assign("${path}/index/showUserAlbum")

</script>
</body>
</html>
