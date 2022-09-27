<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-27
  Time: 오전 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%
    String tid = request.getParameter("tid");
    String save = request.getParameter("saveId");


    if(request.getParameter("saveId")!=null) {
        if (save.equals("id")) {
            Cookie cookie = new Cookie("tid",tid);
            response.addCookie(cookie);
            Cookie cookies[] = request.getCookies();

            if (cookies != null) {
                for (Cookie value : cookies) {
                    if (value.getName().equals("tid"))
                        out.println(value.getValue());
                }
            }
        } else if (save.equals("non")) {
            response.addCookie(new Cookie("tid",null));
            cookie.setMaxAge(0);
            for (Cookie value : cookies) {
                if (value.getName().equals("tid"))
                    out.println(value.getValue()+"값이 없습니다.");
            }
        }
    }
%>--%>
<%

    String chk1 = "";
    String chk2 = "";
    String userId ="";
    if (request.getParameter("tid") != null) {
        Cookie cookie = new Cookie("id", null);
        cookie.setMaxAge(0);
        if (request.getParameter("saveId").equals("id")) {
            cookie.setMaxAge(60 * 60 * 24 * 365);
            userId = request.getParameter("tid");
            cookie.setValue(userId);
            response.addCookie(cookie);
            chk1 = "checked";

        }
        response.addCookie(cookie);
    } else {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for(Cookie c: cookies){
                chk1="";
                chk2="checked";
                if(c.getName().equals("id")){
                    chk1="checked";
                    chk2="";
                    userId=request.getParameter("saveId");
                    break;
                }
            }
        }

    }
%>

<head>
    <title>Title</title>
</head>
<html>
<body>
<form action="cookie_ex.jsp" name="fn" method="get">
    <input type="text" name="tid" id="tid" maxlength="20" minlength="8" value="<%=userId%>"><br/>
    <input type="checkbox" name="saveId" value="id" <%=chk1%>>ID저장<br/>
    <input type="checkbox" name="saveId" value="non" <%=chk2%>>ID저장<br/>
    <input type="submit" value="전송">
    hi

</form>
</body>
</html>
