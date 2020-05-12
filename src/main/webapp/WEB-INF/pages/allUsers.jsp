<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/11
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>allUsers</title>
</head>
<body>
<table>
    <tr>
        <th>账号</th>
        <th>昵称</th>
    </tr>
    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.userid}</td>
            <td>${user.username}</td
        </tr>
    </c:forEach>
</table>

</body>
</html>
