<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-27
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%
    Cookie cookie = new Cookie("op", "1");
    cookie.setMaxAge(60);
    response.addCookie(cookie);
    String result = "";
    for (Cookie v : request.getCookies()) {
            if (v.getName().equals("op")) {
                result = "a";
            }
        }
    out.print(result);
%>
