<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-22
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="text" name="value" id="">
<input type="submit" value="전송">
<%=request.getAttribute("value")%>
</body>
</html>
