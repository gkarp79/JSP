<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오후 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
  <table border="1">
      <%
        for(int i = 0; i<10; i++){
      %>
<%-- HTML시작--%>
          <tr>
<%-- HTML종료--%>
      <%
          for (int j = 1; j<10; j++){
            if(i==0){
      %>
<%-- HTML시작--%>
            <th><%=j+"단"%></th>
<%-- HTML종료--%>
      <%
          }//e:if(i==0)
          else{
      %>
<%-- HTML시작--%>
              <td><%=j%>X<%=i%>=<%=i*j%></td>
<%-- HTML종료--%>
      <%
        }//e:else
          }//e:for (int j = 1; j<10; j++)
      %>
<%-- HTML부분--%>
          </tr>
<%-- HTML종료--%>
      <%
      }//e:for(int i = 0; i<10; i++)
      %>

  </table>
</body>
</html>
