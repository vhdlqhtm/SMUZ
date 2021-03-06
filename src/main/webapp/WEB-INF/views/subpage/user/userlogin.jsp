<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
//로그인 체크하기
$(function(){
	var id, pw;
	$("#sm_login").click(function(){
		id = $("#userid").val();
		pw = $("#password").val();
		
		$.ajax({
			url : "${path}/user/login_check.do",
			type : "post",
			data : {"sm_id": id, "sm_password":pw},
			dataType : "JSON",
			success : function(data) {
				if(data=="1"){
					//로그인성공시 바로 메인페이지로 이동
					location.href='${path}/';
				}else{
					alert("아이디 또는 비밀번호를 확인해주세요");
				}
			}
		})
		return false;
	});
});
	

</script>


</head>
<body class="w3-theme-l5">
	<form class="w3-container" action="#">
		<div class="w3-section">
		  <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter ID" name="sm_id" id="userid" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Enter Password" name="sm_password" id="password" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" id="sm_login" type="submit">로그인</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> 로그인 정보 기억하기 
		</div>
	</form>
</body>
</html>