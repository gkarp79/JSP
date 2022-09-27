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

    String chk1="";
    String chk2="";
    String cookieID = "";
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
        for(Cookie c : cookies){
            if(c.clone().equals("id")){
                chk1="checked";
            }else{
                chk2="checked";
            }
        }
    }
    if(request.getParameter("saveId")!=null){
        if(chk1.equals("checked")){
            Cookie cookie = new Cookie("id","1");
            response.addCookie(cookie);
            cookie.setMaxAge(60*60*24*365);
        }
    }else{

    }
%>

<head>
    <title>Title</title>
</head>
<html>
<body>
<form action="cookie_ex.jsp" name="fn" method="get">
  <input type="text" name="tid" id="tid" maxlength="20" minlength="8"><br/>
  <input type="checkbox" name="saveId" value="id" <%=chk1%>>ID저장<br/>
    <input type="checkbox" name="saveId" value="non" <%=chk2%>>ID저장<br/>
  <input type="submit" value="전송">
    hi

</form>
</body>
</html>
