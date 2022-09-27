<%@ page import="java.util.ArrayList" %>
<%@ page import="java.lang.reflect.Array" %><%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오전 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  ArrayList list;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
  <%
    list = new ArrayList<String>();
    list.add("java");
    list.add("jsp");
    list.add("html");
    for(int i=0;i<list.size(); i++){
  %>
  <tr>
    <td><%=i%></td>
    <td><%=list.get(i)%></td>
  </tr>
  <%
    }
  %>
</table>
</body>
</html>
