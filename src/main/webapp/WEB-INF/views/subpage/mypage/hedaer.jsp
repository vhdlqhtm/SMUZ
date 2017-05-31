<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<title></title>
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
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}

body::-webkit-scrollbar {
	display: none;
}

.w3-teals {
	padding: 20px;
	background-image: url(${path}/resources/img/back.jpg);
	background-position: center;
	background-size: cover;
	color: white;
}
</style>
<body class="w3-theme-l5">

	<div class="w3-container w3-teals">
		<div class="w3-padding-16">
			<img src="${path}/resources/img/profile.jpg" class="w3-left w3-circle w3-margin-right"
				style="width: 50px"> <span class="w3-large">복숭아 님</span><br>
			<span>맛있는 복숭아! 신나는 노래 전문!</span>
		</div>
		<div class="w3-padding-16 w3-left">
			<p>차트 데이터가 들어가는 부분입니다</p>
		</div>
	</div>


</body>
</html>