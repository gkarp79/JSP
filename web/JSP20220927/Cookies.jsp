<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-27
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Cookies</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("name", "홍길동");
    cookie.setMaxAge(60);
    response.addCookie(cookie);
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
        for(int i=0; i<cookies.length;i++){
            out.println(cookies[i].getValue());
        }
    }
    /*response.addCookie(new Cookie("name",null));
    cookie.setMaxAge(0);*/

%>
</body>
</html>
