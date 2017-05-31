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

a {
	text-align: left;
}
</style>
<body class="w3-theme-l5">

	<!-- 2017-05-25 (html & script) -->

	<!-- myList & Content write(edit) -->

	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 30px;">
		<div class="w3-row-padding">
			<br>
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding">
						<h4 class="w3-opacity">오늘은 어떤 리스트를 작성하실껀가요?</h4>
						<input type="text" name="post" value="" class="form-control"
							placeholder="리스트에 맞는 글을 작성해 주세요." /> <br>
						<button type="button" class="w3-button w3-theme">
							<i class="fa fa-pencil"></i>  Post
						</button>
					</div>
				</div>
			</div>
		</div>



		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- End Left Column -->
			</div>

			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/profile.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right" style="width: 60px;">
				<p class="w3-right w3-opacity">2017년 05월 24일</p>
				<h5>복숭아 님</h5>
				<h4>우울할때 듣는 음악 리스트</h4>

				<hr class="w3-clear">
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="list-group" style="text-align: left;">
						<a href="#" class="list-group-item active"><span></span><img
							src="${path}/resources/img/vxz.gif" class="media-object"
							style="width: 20px; padding-bottom: 10px; margin-right: 10px; display: inline-block;">아이유
							- 팔레트(Feat. GD)</a> <a href="#" class="list-group-item"><span></span>어반자카파
							- 코끝에 겨울</a> <a href="#" class="list-group-item"><span></span>어반자카파
							- 똑같은 이별 똑같은 사랑</a> <a href="#"
							class="list-group-item list-group-item-info"
							style="text-align: center;">리스트에 노래 추가</a>
					</div>
					<p class="hashtag">
						<a href="#">#우울</a>, <a href="#">#감성</a>, <a href="#">#슬픔</a>
					</p>
				</div>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" id="Comment" onclick="commenter();"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
				<button type="button" id="Modify"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-pencil"></i>  Modify
				</button>
				<button type="button" id="Delete"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-close"></i>  Delete
				</button>

				<div id="commentery" class="media">
					<h4>댓글</h4>
					<hr>
					<div class="media-left">
						<img src="${path}/resources/img/006.gif" class="media-object"
							style="width: 60px; border-radius: 50%;">
					</div>

					<div class="media-body">
						<h4 class="media-heading">광어</h4>
						<p>닥추 합니다! 이 노래 정말 좋음!</p>
					</div>
					<hr>
					<div class="media-left">
						<img src="${path}/resources/img/tiger.jpg" class="media-object"
							style="width: 60px; border-radius: 50%;">
					</div>

					<div class="media-body">
						<h4 class="media-heading">호랑이</h4>
						<p>진짜 좋음 굿!</p>
					</div>

					<hr>
					<input type="text" name="comment" id="comment" value=""
						class="form-control" placeholder="댓글을 입력해주세요."> <br>
				</div>
				<script>
					function commenter() {
						$("#commentery").toggle();
					}
					;
				</script>
			</div>
			<br>
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/profile.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right" style="width: 60px;">
				<span class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>복숭아 님</h5>
				<h4>신나는 노래 리스트!</h4>
				<hr class="w3-clear">
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="list-group">
						<a href="#" class="list-group-item"><span></span>The Fat Rat -
							Unity</a> <a href="#" class="list-group-item"><span></span>Alan
							Walker - Spectre</a> <a href="#" class="list-group-item"><span></span>Tobu
							- Higher</a> <a href="#" class="list-group-item"><span></span>Virtual
							Riot - Energy Drink</a> <a href="#" class="list-group-item"><span></span>DEAF
							KEV - invincible</a> <a href="#"
							class="list-group-item list-group-item-info"
							style="text-align: center;">리스트에 노래 추가</a>
					</div>
					<p class="hashtag">
						<a href="#">#파워</a>, <a href="#">#EDM</a>, <a href="#">#신남</a>
					</p>
				</div>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" id="Comment"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
				<button type="button" id="Modify"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-pencil"></i>  Modify
				</button>
				<button type="button" id="Delete"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-close"></i>  Delete
				</button>

			</div>
			<br>

			<!-- End Middle Column -->
		</div>
	</div>

	<!-- End Grid -->
</body>
</html>