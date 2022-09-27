<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-27
  Time: 오후 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String strClass = "";
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie c : cookies){
            if(c.getName().equals("op")){
                strClass="class='hidden'";
                break;
            }
        }
    }
%>
<html>
<head>
    <link rel="stylesheet" href="CSS/Cookie.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="./JS/cookie.js"></script>
    <title>Cookie</title>

</head>

<body>
<div id="aaa" <%=strClass%>>
    <div id="windowBox" >
        <form name="fn">
            <input type="checkbox" name="chkBox" id="chkBox" value="1">
            <span>2분동안 창열지 않기</span>
            |
            <span id="close">창닫기</span>
        </form>
    </div>
</div>
</body>
</html>
