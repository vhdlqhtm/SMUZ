<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  ~~~~
</h1>

<P>  The time on the server is ${serverTime}. </P>
<!-- 아래주소에 member는 controller 의 맵핑 이름이고 sm_join 은 그밑에 기타 다른것들의 맵핑 아이디이다. -->
<a href="${path}/member/sm_join.do">회원가입 보기</a>
</body>
</html>
