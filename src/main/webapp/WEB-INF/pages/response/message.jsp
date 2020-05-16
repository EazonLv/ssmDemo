<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/11
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>

<script language="javascript">
    alert("<%=request.getSession().getAttribute("message")%>")

    //返回前页并刷新
    self.location=document.referrer;


</script>
</html>
