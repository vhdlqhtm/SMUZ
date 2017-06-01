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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}

body::-webkit-scrollbar {
	display: none;
}
</style>
<body class="w3-theme-l5">

	<!-- 2017-05-25 (html & script) -->
	<!-- Recommendation Page - sub1.jsp -->

	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 30px;">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- End Left Column -->
			</div>
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/icon.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h4>SMUZ의 오늘의 추천 - (5월 24일)</h4>
				<br>
				<hr class="w3-clear">
				<p>
					오늘은 정말 더운 날씨 입니다.<br> 오늘은 날씨가 더우니 시원한 EDM 한번 들어 보실래요?<br>Calvin
					Harris - Summer | Cash Cash - overtime(EP)
				</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<img src="${path}/resources/img/calvinharris.jpg" style="width: 100%"
							alt="Northern Lights" class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="${path}/resources/img/cashcash.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
				</div>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
			</div>

			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/icon.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h4>SMUZ의 오늘의 추천 - (5월 24일)</h4>
				<br>
				<hr class="w3-clear">
				<p>
					비가 추적 추적 내리는 우울한날 ㅠㅜ <br> 분위기 있는 노래 한번 들어보실래요? <br> Kygo,
					Selena Gomez - It Ain't Me
				</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<img src="${path}/resources/img/kyogo.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
				</div>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
			</div>

			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/icon.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 23일</span>
				<h4>SMUZ의 오늘의 추천 - (5월 23일)</h4>
				<br>
				<hr class="w3-clear">
				<p>
					초록 초록의 계절 여름입니다! <br>여름이면 바다가 먼저 생각나죠! <br> 바다 가고싶은날, 바다에
					가서 들으면 좋은 노래 한번 들어보실래요? <br> Mike Perry - The Ocean ft. Shy
					Martin | Afrojack - SummerThing! ft. Mike Taylor
				</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<img src="${path}/resources/img/ocean.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="${path}/resources/img/summer.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
				</div>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
			</div>

			<!-- End Middle Column -->
		</div>
	</div>

	<!-- End Grid -->

	<!-- End Page Container -->
	<br>

</body>
</html>
