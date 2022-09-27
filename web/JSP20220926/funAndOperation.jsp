<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>함수, 변수의 연산</title>
</head>
<body>
<%
    Date date = new Date();
    int hour = date.getHours();
    int one = 10;
    int two = 12;
%>
<%!
    public int operation(int i, int j){
        return i>j? i:j;
    }
%>
<p><%=hour%>시 오전? 오후 : <%=hour<12? "오전":"오후"%></p>
<p><%=one%> or <%=two%> 중 큰 수는 : <%=operation(one, two)%></p>
</body>
</html>
