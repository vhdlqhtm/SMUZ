<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악 리스트~~</title>
<!-- ------------------------------------------------------------- -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- ------------------------------------------------------------- -->
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif;
}

body::-webkit-scrollbar {
	display: none;
}

.hashtag {
	color: gray;
}

.video-box {
	position: relative;
	width: 100%;
	padding: 56.6% 0 6px;
}

.video-box iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.media {
	display: none;
}

.w4-margin{
	margin: 15px 1px !important;
}
</style>
<!-- ------------------------------------------------------------- -->

</head>
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
<body>
<%-- <h3>회원 목록</h3>
   <table>
      <tr>
         <th>번호</th>
         <th>음악</th>
         <th>사는곳</th>
      </tr>
      <c:forEach var="user" items="${list}">
         <tr>
            <td>
              <a href="${path}/member/view.do?mpk=${member.mpk}">
               ${member.mid}
               </a>
            </td>
            <td>${user.sm_seq}</td>
            <td>${user.sm_music}</td>
            <td>${user.sm_from}</td>
         </tr>
      </c:forEach>
      </table> --%>
      
      <h2>회원가입</h2>
   <form action = "${path}/user/sm_listInsert.do" method="post">
      <table>
         <tr><td>좋아하는 음악</td>
            <td><input type="text" name="sm_music" value=""></td></tr>
         <tr><td>사는곳</td>
            <td><input type="text" name="sm_from" value=""></td></tr>
         <tr><td align = "center" colspan="2">
            <input type="submit" value="데이터 추가!">
            </td></tr>
      </table>
   </form>
      
      <div class="w3-container w3-card-2 w3-white w3-round w4-margin">
      
				<br> <img src="${path}/resources/img/tiger.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>호랑이 님의 리스트</h5>
				<h4>개인 소장용 리스트 입니다.</h4>
				<hr class="w3-clear">
				<p>냉무</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<c:forEach var="user" items="${list}">
					<div class="list-group">
						<a href="#" class="list-group-item active">${user.sm_seq}. ${user.sm_music} - ${user.sm_from} </a>
						<!-- <a href="#" class="list-group-item">어반자카파 - 코끝에 겨울</a>
						<a href="#"	class="list-group-item">어반자카파 - 똑같은 이별 똑같은 사랑</a>
						<a href="#"	class="list-group-item">Krewella - Come And Get It (Razihel Remix)</a>
						<a href="#"	class="list-group-item">Roundtable Rival - Lindsey Stirling</a> -->
					</div>
					</c:forEach>
				</div>
				<p class="hashtag">
					<a href="#">#개인 리스트</a>, <a href="#">#공부할때 듣는 곡</a>, <a href="#">#개인
						소장용</a>
				</p>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
			</div>
      
      
      
</body>
</html>