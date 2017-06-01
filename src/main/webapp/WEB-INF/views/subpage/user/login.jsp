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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/datepicker.css">
<script src="${path}/resources/js/bootstrap-datepicker.js"></script>
<script src="${path}/resources/js/passwordscheck.js"></script>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif;
}

#radioBtn .notActive {
	color: #3276b1;
	background-color: #fff;
}

.good{
	color:#ffcc00 !important;
}

.strong{
	color:#00cc00 !important;
}
</style>
<script>
$(function(){
	
	/*
	 * password check event
	 */
	
	var pass1, pass2;
	$("#password_checked").keyup(function(){
		pass1= $("#password").val();
		pass2= $("#password_checked").val();
		
		if(pass1 != pass2){
			$("#pchk_wrong").html("암호가 틀립니다.");
		}else{
			$("#pchk_wrong").html("");
		}
	});
	
	/*
	 * id check event
	 */
	
	var passre;
	$("#id").keyup(function(){
		var val = $(this).val(),
			regex = /^[A-Za-z0-9+]{4,16}$/;
			
			if(val==""||val==null){
				$("#id_wrong").html("아이디를 입력해주세요.");
				$("#sm_check").css({"pointer-events":"none"}).click(function(e){e.preventDefault();});
			}else if(!regex.test(val)){
				$("#id_wrong").html("아이디는 영문, 숫자 총 4자 이상 15자 이하로 작성해주세요.");
				$("#id_wrong").html("아이디는 영문, 숫자 총 5자 이상 15자 이하로 작성해주세요.");
				$("#sm_check").css({"pointer-events":"none"}).click(function(e){e.preventDefault();});
			}else{
				$("#id_wrong").html("");
			}
	
	});	
	/*
	 * data pass
	 * dataType Json
	 */
		var id, password, name, birthday, sex, music, music_data, cnt;
		$("#submit").click(function(){
			
		//전체목록 유효성 검사
		  if(!$("#userid").val()){
			  alert("아이디를 입력하세요.");
			  return false;
		  } 
		  
		  //중복체크 버튼이 눌렸는지 확인
		  if(!$("#sm_check").is(":disabled")){
			  alert("아이디 중복확인을 해주세요.");
			  return false;
		  } 
		  if(!$("#pass").val()){
			  alert("비밀번호를 입력해주세요.");
			  return false;
		  }
		  
		  if(!$('#pass_check').val()){
			  alert("비밀번호 확인란을 입력해주세요.");
			  return false;
		  }
		  
		  if($('#pass').val() != $('#pass_check').val()){
			  alert("비밀번호가 맞지 않습니다.");
			  return false;
		  }
		   if(!$("#name").val()){
			  alert("이름을 입력하세요.");
			  return false;
		  } 
		  if(!$("#datepicker").val()){
			  alert("생년월일을 입력하세요");
			  return false;
		  } 
			
			
			// check data array
			music = $(".music");
			music_data = Array();
			cnt = 0;
			for(var i = 0; i < music.length; i++){
				if(music[i].checked == true){
					music_data[cnt] = music[i].value;
					cnt++;
				}
			}
			
			id = $("#id").val();
			password = $("#password").val();
			name = $("#name").val();
			birthday = $("#reservation").val();
			sex = $("#sex").val();
			
			// data pass ajax
			var alldata = {'id':id, 'password':password, 'name':name, 'birthday':birthday, 'sex':sex, 'music':music_data};
								
			$.ajax({
				url:"${path}/user/join.do",
				type:"post",
				data: JSON.stringify(alldata),
				processData: false,
				contentType: "application/json",
				error:function(request,status,error){
					alert(request+"---"+status+"---"+error);
				}
			});
			$("#join_form").attr({action:'${path}/user/join.do', method:'post'}).submit();
			alert("전송 완료");
			
			location.href="${path}/";
		});
	});
</script>
</head>
<body class="w3-theme-l5">

	<!-- 2017-05-29 (html & script) -->

	<!-- user Join form (style edit) -->
	
	<!-- *************************** -->
	<!-- 추가사항 - 스크립트를 통한 유효성 검사 추가 ** 2017-05-31 -->
	
	<div class="container">
	<h2>SMUZ 회원가입</h2>
	<br><br>
		<div class="form-group">
		<form id="join_form" method="post">
			<label><b>아이디</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa fa-user-circle-o"></i>
				</div>
				<input type="text" class="form-control pull-right"id="id">
				<div class="input-group-addon">
					<a href="#" id="sm_check" style="color:black">중복확인</a>
				</div>
			</div>
			<p id="id_wrong" style="color:red;"></p>
			
			<label><b>비밀번호</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa fa-unlock-alt"></i>
				</div>
				<input type="password" class="form-control pull-right" id="password">
			</div>
			<p id="result" style="color:red;"></p>
			
			<label><b>비밀번호 확인</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa fa-unlock-alt"></i>
				</div>
				<input type="password" class="form-control pull-right" id="password_checked">
			</div>
			<p id="pchk_wrong" style="color:red;"></p>
						
			<label><b>이름</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa  fa-user"></i>
				</div>
				<input type="text" class="form-control pull-right" id="name">
			</div>
			<br>
			
			<label><b>생년월일</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa fa-calendar"></i>
				</div>
				<input type="text" class="form-control pull-right" id="reservation">
				<script>
                  $('#reservation').datepicker();
                  </script>
			</div>
			<br>

			<label for="sex"><b>성별</b></label>

			<div class="input-group">
				<div id="radioBtn" class="btn-group">
					<a class="btn btn-primary btn-sm active" data-toggle="sex"
						data-title="m">남자</a>
					<a class="btn btn-primary btn-sm notActive"
						data-toggle="sex" data-title="w">여자</a>
				</div>
				<input type="hidden" name="sex" id="sex">
				<script>
				/*
				 * add data input type
				 */
    	$('#radioBtn a').on('click', function(){
    	    var sel = $(this).data('title');
    	    var tog = $(this).data('toggle');
    	    $('#'+tog).prop('value', sel);
    	    
    	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
    	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
    	})
    	</script>
			</div>
			<br> <label><b>음악장르</b></label>
				<div class="input-group">
					<div class="input-group-addon">
						<div class="checkbox">
							<label><input type="checkbox" name="music[]" class="music" value="가요">가요</label>
							<label><input type="checkbox" name="music[]" class="music" value="pop">POP</label>
							<label><input type="checkbox" name="music[]" class="music" value="edm">EDM</label>
							<label><input type="checkbox" name="music[]" class="music" value="jazz">JAZZ</label>
							<label><input type="checkbox" name="music[]" class="music" value="classic">CLASSIC</label>
							<label><input type="checkbox" name="music[]" class="music" value="jpop">JPOP</label>
							<label><input type="checkbox" name="music[]" class="music" value="발라드">발라드</label>
							<label><input type="checkbox" name="music[]" class="music" value="댄스">댄스</label>
							<label><input type="checkbox" name="music[]" class="music" value="R&B">R&B</label>
							<label><input type="checkbox" name="music[]" class="music" value="소울">소울</label>
							<label><input type="checkbox" name="music[]" class="music" value="락">락</label>
							<label><input type="checkbox" name="music[]" class="music" value="랩">랩</label>
							<label><input type="checkbox" name="music[]" class="music" value="힙합">힙합</label>
							<label><input type="checkbox" name="music[]" class="music" value="일렉트로닉카">일렉트로닉카</label>
							<label><input type="checkbox" name="music[]" class="music" value="인디">인디</label>
							<label><input type="checkbox" name="music[]" class="music" value="블루스">블루스</label>
							<label><input type="checkbox" name="music[]" class="music" value="포크">포크</label>
							<label><input type="checkbox" name="music[]" class="music" value="트로트">트로트</label>
							<label><input type="checkbox" name="music[]" class="music" value="뉴에이지">뉴에이지</label>
						</div>
						
					</div>
				</div>
				<br>
				<button class="btn btn-primary" type="button" id="submit">회원가입</button>
			</form>
		</div>
	</div>
</body>
</html>