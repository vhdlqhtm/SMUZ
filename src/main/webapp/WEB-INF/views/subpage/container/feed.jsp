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
</head>
<body class="w3-light-grey">
	<div class="w3-row-padding w3-row" style="max-width: 1080px">


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
	
		<!-- Page Container -->
	
	
		<br>
		<div class="w3-col s4">
			<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/serimp.png" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>새우 님</h5>
				<h4>오늘은 이걸로 달린다!</h4>
				<hr class="w3-clear">
				<p>Cash Cash 형들 신곡 출시!</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="video-box">
						<iframe width="100%" height="100%"
							src="https://www.youtube.com/embed/O33x3EyUbpc" frameborder="0"
							allowfullscreen></iframe>
					</div>
					<br>
				</div>

				<button type="button" id="Like"
					class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" id="Comment"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>

				<div class="media">
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

			</div>

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

					<div class="list-group">
						<a href="#" class="list-group-item active">아이유 - 팔레트(Feat. GD)</a>
						<a href="#" class="list-group-item">어반자카파 - 코끝에 겨울</a>
						<a href="#"	class="list-group-item">어반자카파 - 똑같은 이별 똑같은 사랑</a>
						<a href="#"	class="list-group-item">Krewella - Come And Get It (Razihel Remix)</a>
						<a href="#"	class="list-group-item">Roundtable Rival - Lindsey Stirling</a>
					</div>
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

			<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/006.gif" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 23일</span>
				<h5>광어 님</h5>
				<h4>광광 우럭다.</h4>
				<hr class="w3-clear">
				<p>노래 넘나 좋은것</p>
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
				<p class="hashtag">
					<a href="#">#EDM</a>, <a href="#">#프로그래시브</a>, <a href="#">#하우스</a>
				</p>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
			</div>
			
			
			
	</div>
	
	<div class="w3-col s4">
	<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/006.gif" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 23일</span>
				<h5>광어 님</h5>
				<h4>광광 우럭다.</h4>
				<hr class="w3-clear">
				<p>노래 넘나 좋은것</p>
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
				<p class="hashtag">
					<a href="#">#EDM</a>, <a href="#">#프로그래시브</a>, <a href="#">#하우스</a>
				</p>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
			</div>
	
			<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/serimp.png" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>새우 님</h5>
				<h4>오늘은 이걸로 달린다!</h4>
				<hr class="w3-clear">
				<p>Cash Cash 형들 신곡 출시!</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="video-box">
						<iframe width="100%" height="100%"
							src="https://www.youtube.com/embed/O33x3EyUbpc" frameborder="0"
							allowfullscreen></iframe>
					</div>
					<br>
				</div>

				<button type="button" id="Like"
					class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" id="Comment"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>

				<div class="media">
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

			</div>

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

					<div class="list-group">
						<a href="#" class="list-group-item active">아이유 - 팔레트(Feat. GD)</a>
						<a href="#" class="list-group-item">어반자카파 - 코끝에 겨울</a> <a href="#"
							class="list-group-item">어반자카파 - 똑같은 이별 똑같은 사랑</a>
					</div>
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

			
	</div>
	
	<div class="w3-col s4">
			

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

					<div class="list-group">
						<a href="#" class="list-group-item active">아이유 - 팔레트(Feat. GD)</a>
						<a href="#" class="list-group-item">어반자카파 - 코끝에 겨울</a> <a href="#"
							class="list-group-item">어반자카파 - 똑같은 이별 똑같은 사랑</a>
					</div>
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

			<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/006.gif" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 23일</span>
				<h5>광어 님</h5>
				<h4>광광 우럭다.</h4>
				<hr class="w3-clear">
				<p>노래 넘나 좋은것</p>
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
				<p class="hashtag">
					<a href="#">#EDM</a>, <a href="#">#프로그래시브</a>, <a href="#">#하우스</a>
				</p>
				<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>
			</div>
			
			<div class="w3-container w3-card-2 w3-white w3-round w4-margin">
				<br> <img src="${path}/resources/img/serimp.png" alt="Avatar"
					class="w3-left w3-circle w3-margin-right"
					style="width: 60px; border-radius: 50%;"> <span
					class="w3-right w3-opacity">2017년 05월 24일</span>
				<h5>새우 님</h5>
				<h4>오늘은 이걸로 달린다!</h4>
				<hr class="w3-clear">
				<p>Cash Cash 형들 신곡 출시!</p>
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="video-box">
						<iframe width="100%" height="100%"
							src="https://www.youtube.com/embed/O33x3EyUbpc" frameborder="0"
							allowfullscreen></iframe>
					</div>
					<br>
				</div>

				<button type="button" id="Like"
					class="w3-button w3-theme-d1 w3-margin-bottom">
					<i class="fa fa-thumbs-up"></i>  Like
				</button>
				<button type="button" id="Comment"
					class="w3-button w3-theme-d2 w3-margin-bottom">
					<i class="fa fa-comment"></i>  Comment
				</button>

				<div class="media">
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

			</div>
	</div>
</div>
</body>
</html>