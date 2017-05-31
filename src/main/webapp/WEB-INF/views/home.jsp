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
<link rel="stylesheet" href="${path}/resources/css/datepicker.css">
<script src="${path}/resources/js/bootstrap-datepicker.js"></script>
<script src="${path}/resources/js/passwordscheck.js"></script>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif;
}

#cl-dashboard{
	display: none;
}

html::-webkit-scrollbar {
	display: none;
}

.tail {
	border: none;
	display: inline-block;
	outline: 0;
	padding: 10px 16px;
	vertical-align: middle;
	overflow: hidden;
	text-decoration: none;
	color: inherit;
	background-color: inherit;
	text-align: center;
	white-space: nowrap;
}

.scroller {
	max-height: 125px;
	overflow: scroll;
}

.scroller::-webkit-scrollbar {
	display: none;
}

.scrollering {
	overflow: scroll;
	max-height: 500px;
}

.scrollering::-webkit-scrollbar {
	display: none;
}

.headline {
	padding: 0px;
	margin: 0px;
}

.list-group-item.active {
	z-index: 0 !important;
}

.fixed {
	position: fixed;
	right: 0;
}

.hided{
	position: absolute;
	top:0;
	bottom:0;
	left:0;
	right: 0;
	margin: auto;
	z-index: 99;
}
</style>
</head>
<body class="w3-theme-l5">

	
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
        <img src="${path}/resources/img/profile.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="#">
        <div class="w3-section">
          <label><b>아이디1</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter ID" name="usrname" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Enter Password" name="psw" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">로그인</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> 로그인 정보 기억하기
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">비밀번호 <a href="#">찾기</a></span>
      </div>

    </div>
  </div>
	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align w3-large">
			<div style="max-width: 1080px; margin: 0 auto;">
				<a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
					href="javascript:void(0);" onclick="openNav()"><i
					class="fa fa-bars"></i></a>
				<a href="${path}/"	class="w3-bar-item w3-button w3-padding-large w3-theme-d4">
				<i class="fa fa-home w3-margin-right"></i>로고</a>
				<a href="#"	class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="News"><i class="fa fa-globe"></i></a>
				<a href="${path}/import/mypage.do"	class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Account Settings"><i class="fa fa-user"></i></a> <a href="#"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Messages"><i class="fa fa-envelope"></i></a>
					
				<a href="#" onclick="document.getElementById('id01').style.display='block'" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white">Login</a>
				<a href="${path}/import/join.do" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white">Join</a>
					
				<!-- 지우면 안됨 -->
				<!-- <div class="w3-dropdown-click" style="float:right;">
					<a href="#"
						class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white"
						title="My Account" style="display: table; height: 51px"
						onclick="myFunction()"><img src="img/profile.jpg"
						class="w3-circle"
						style="height: 25px; width: 25px; display: table-cell;"
						alt="Avatar"></a>
					<div id="Demo" class="w3-dropdown-content w3-bar-block w3-border" style="top:51px">
						<a href="#" class="w3-bar-item w3-button">마이 페이지</a>
						<a href="#"	class="w3-bar-item w3-button">정보 수정</a>
						<a href="#"	class="w3-bar-item w3-button">로그 아웃</a>
					</div>
				</div> -->
				

			</div>
		</div>
	</div>

	<script>
		function myFunction() {
			var x = document.getElementById("Demo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>

	<div class="w3-container w3-content" style="max-width: 1150px;">
		<div class="w3-col" style="margin-top: 80px">
			<jsp:include page="${include}" />
		</div>
		<div class="w3-col m2 fixed"
			style="max-width: 200px; margin-top: 50px">
			<div class="w3-card-2 w3-round">
				<div class="w3-white">
					<span class="w3-block w3-theme-l1 tail w3-left-align"><b>팔로잉
							목록</b></span>
					<hr class="headline">
					<div class="scrollering">
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 1 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 2 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 3 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 4 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 5 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 6 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 7 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 8 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 9 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 10 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 11 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 12 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 13 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 14 님
						</button>
						<button class="w3-button w3-block w3-theme-l1 w3-left-align">
							<i class="fa fa-users fa-fw w3-margin-right"></i> test 15 님
						</button>
					</div>
				</div>
			</div>
			<br>
			<div class="list-group">
				<p class="list-group-item">
					<b>플레이 리스트</b>
				</p>
				<div class="scroller">
					<a href="#" class="list-group-item active">팔레트(Feat.GD)-아이유</a>
					<a href="#" class="list-group-item">코끝에 겨울 - 어반자카파</a>
					<a href="#"	class="list-group-item">똑같은 사랑 똑같은 이별 - ...</a>
					<a href="#"	class="list-group-item">GET(Feat.빈지노) - 어반...</a>
					<a href="#"	class="list-group-item">Bangarang - Skrillex</a>
				</div>
			</div>
			<br>
			<div class="w3-card-2 w3-round w3-white w3-padding-16 w3-center">
			</div>
		</div>
	</div>
</body>
</html>