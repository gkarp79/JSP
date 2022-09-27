<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  String name;
  String color;
%>
<%
  request.setCharacterEncoding("utf-8");
  if(request.getParameter("name")!="") name = request.getParameter("name");
  if(request.getParameter("color")!="") color = request.getParameter("color");
  out.println("<p>"+name+"님이 좋아하는 색은"+color+"입니다</p>");
  out.println("<div style='background-color:"+color+";width:500px;height:100px'></div>");
%>

