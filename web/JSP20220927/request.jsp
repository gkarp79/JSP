<%--
  Created by IntelliJ IDEA.
  User: PerTo
  Date: 2022-09-27
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- requset 객체의 웹 브라우저, 웹 서버 및 요청 헤더 정보 관련 메소드
    -----------------------------------------------------------------
    - String getProtocol()          웹 서버로 요청 시, 사용 중인 프로토콜을 리턴한다.
    - String getServerName()        웹 서버로 요청 시, 서버의 도메인 이름을 리턴한다.
    - String getMethod()            웹 서버로 요청 시, 요청에 사용된 요청 방식(GET, POST, PUT 등)을 리턴한다.
    - String getQueryString         웹 서버로 요청 시, 요청에 사용된 QueryString을 리턴한다.
    - String getRemoteAddr()        웹 서버로 정보를 요청한 웹 브라우저가 IP주소를 리턴한다.
    - int getServerPort()           웹 서버로 요청 시, 서버의 Port번호를 리턴한다.
    - String getContextPath()       해당 JSP 페이지가 속한 웹 어플리케이션의 콘텍스트 경로를 리턴한다.
    - String getHeader(Name)        웹 서버로 요청 시, HTTP 요청 헤더(header)의 헤더 이름인 name에 해당하는 속성값을 리턴한다.
    - Enumeration getHeaderNames()  웹 서버로 요청 시, HTTP 요청 헤더(header)에 있는 모든 헤더 이름을 리턴한다.
    response 내장 객체에서 자주 사용되는 메소드.
    - void setHeader(name, value) 헤더 정보의 값을 수정하는 메소드로,
                                  name에 해당하는 헤더 정보를 value값으로 설정한다.
      void setContentType(type) 웹 브라우저의 요청의 결과로 보일 페이지의 contentType을 설정한다.
      void sendRedirect(url) 페이지를 이동시키는 메소드로, url로 주어진 페이지로 제어가 이동한다. /단,데이터가 많을수록 불리하다.
--%>
</body>
</html>
