<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>코딩문법</title>
</head>
<body>
    <%!
        public String cmdMethod(String name){
            return name;
        }
    %>
<%=cmdMethod("홍길동")%>
</body>
</html>
