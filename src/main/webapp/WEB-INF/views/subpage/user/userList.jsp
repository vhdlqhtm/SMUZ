<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.setHeader("cache-control","no-store");
	response.setHeader("expires","0");
	response.setHeader("pragma","no-cache");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
<script>
	$(document).ready(function(){
		//수정 버튼을 누르면
		$("#upBtn").click(function(){
			document.viewForm.action ="${path}/Prototype/update.do";
			document.viewForm.submit();
		});
		$("#deBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
			document.viewForm.action ="${path}/Prototype/delete.do";//컨트롤러 안에 있는 requestmapping
			document.viewForm.submit();
			}
		});
	});
</script>
</head>
<body>

<h3>회원목록</h3>
<form name="viewForm" method="post">
	<table border="1">
		<c:forEach var="member" items="${list}">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="tuid" value="${member.tuid}"/>
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="tuname" value="${member.tuname}"/>
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input type="text" name="tuage" value="${member.tuage}"/>
				</td>
			</tr>
			<tr>
				<th>음악목록</th>
				<td>
					<input type="text" name="tmuz" value="${member.tmuz}"/>
				</td>
			</tr>
				<!-- 컨트롤러에서 모델로 넘겨준게 list이다. -->
		
			<tr>
				<td align="center" colspan="4">
					<input type="text" name="t_seq" value="${member.t_seq}" />
					<input type="button" id="upBtn" value="수정" />
					<input type="button" id="deBtn" value="삭제" />
				</td>
			</tr>
		</c:forEach>	
	</table>
</form>
</body>
</html>