<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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

.w4-margin {
	margin: 15px 1px !important;
}
</style>
<!-- ------------------------------------------------------------- -->
</head>

<body>
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

					<!-- list 테스트 -->
					<script type="text/javascript">
					$(document).ready(function(){ //화면로딩시 바로 쓰려면 이렇게!!
					var string = "${user.sm_music}";
					var aa = "${user.sm_seq}";
					var strArray=string.split(',');
					var str = strArray.join(); // 배열값 확인
					
					for(var i = 0; i < strArray.length; i++){
					document.getElementById("test").innerHTML += "<a href='#' class='list-group-item' >"+strArray[i]+"</a><br/>";
					//document.getElementById("test").innerHTML += "<a href='#' class='list-group-item' >"+str+"</a><br/>";
					
					}
					});
					
					</script>

					<!-- list가 만들어지는곳. -->
					<div id="test">
					</div>

					<form class="w3-container" action="${path}/user/sm_musicupdate.do">
						<div class="w3-section">
							<label><b>음악추가</b></label> <input
								class="w3-input w3-border w3-margin-bottom" type="text"
								placeholder="Enter ID" name="sm_music" id="userid" required>
							<button class="w3-button w3-block w3-green w3-section w3-padding"
								id="sm_login" type="submit">전송</button>
						</div>
					</form>

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