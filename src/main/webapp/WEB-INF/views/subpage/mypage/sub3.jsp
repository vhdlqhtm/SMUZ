<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title></title>
<style>
#cl-dashboard {
	display: none;
}

html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
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
</style>

</head>
<body class="w3-theme-l5">
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 30px;">

		<ul class="w3-ul w3-card-4">
			<li class="w3-padding-16"><span
				class="w3-button w3-xlarge w3-right"><i
					class="fa fa-arrow-right"></i></span> <img src="img/006.gif"
				class="w3-left w3-circle w3-margin-right" style="width: 50px">
				<span class="w3-large">광어 님</span><br> <span>게시물 하나를 새로
					작성하셨습니다.</span></li>
			<li class="w3-padding-16"><span
				class="w3-button w3-xlarge w3-right"><i
					class="fa fa-arrow-right"></i></span> <img src="img/serimp.png"
				class="w3-left w3-circle w3-margin-right" style="width: 50px">
				<span class="w3-large">새우 님</span><br> <span>게시물 하나를 새로
					작성하셨습니다.</span></li>
			<li class="w3-padding-16"><span
				class="w3-button w3-xlarge w3-right"><i
					class="fa fa-arrow-right"></i></span> <img src="img/tiger.jpg"
				class="w3-left w3-circle w3-margin-right" style="width: 50px">
				<span class="w3-large">호랑이 님</span><br> <span>뮤직 리스트를 새로
					작성하셨습니다.</span></li>
		</ul>
	</div>
</body>
</html>