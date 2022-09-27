<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-26
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>폼 데이터 전송</title>
</head>
<body>
    <form action="/jspresult" method="post" name="fn">
        <p><label for="name"><input type="text" name="name" id="name" ></label></p>
        <p><label for="color">좋아하는 색상</label>
            <select name="color" id="color">
                <option value="blue">파랑색</option>
                <option value="red">빨강색</option>
                <option value="yellow">노랑색</option>
                <option value="green">초록색</option>
            </select>
        </p>
        <p><input type="submit" value="전송하기"></p>
    </form>
</body>
</html>
