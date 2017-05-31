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
</style>
<body class="w3-theme-l5">
	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 30px;">
		<div class="w3-row-padding">
			<br>
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding">
						<h4 class="w3-opacity">오늘은 어떤 음악을 게시할껀가요?</h4>
						<input type="text" name="post" value="" class="form-control"
							placeholder="음악에 맞는 글을 작성해 주세요." /> <br>
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
				<h4>오늘은 이걸로 달린다!</h4>

				<hr class="w3-clear">
				<p>너무 좋은 노래들이야!</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<img src="${path}/resources/img/calvinharris.jpg" style="width: 100%"
							alt="Northern Lights" class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="${path}/resources/img/cashcash.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
					<p class="hashtag">
						<a href="#">#EDM</a>, <a href="#">#신남</a>, <a href="#">#여름</a>
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

				<div id="commentery" style="display: none;">
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
						<img src="img/tiger.jpg" class="media-object"
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
		function commenter(){
			$("#commentery").toggle();
		};
		</script>
			</div>
			<br>
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img src="${path}/resources/img/profile.jpg" alt="Avatar"
					class="w3-left w3-circle w3-margin-right" style="width: 60px;">
				<span class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>복숭아 님</h5>
				<h4>너무너무 좋은 노래!</h4>
				<hr class="w3-clear">
				<p>좋은 노래들 추천합니다 굳!</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<img src="${path}/resources/img/summer.jpg" style="width: 100%"
							alt="Northern Lights" class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="${path}/resources/img/kyogo.jpg" style="width: 100%" alt="Nature"
							class="w3-margin-bottom">
					</div>
					<p class="hashtag">
						<a href="#">#여름</a>, <a href="#">#시원함</a>, <a href="#">#더움</a>
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