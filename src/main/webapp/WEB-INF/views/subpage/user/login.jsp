<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	var passre;
	
	$("#id").keyup(function(){
		var val = $(this).val(),
			regex = /^[A-Za-z0-9+]{4,16}$/;
			
			if(val==""||val==null){
				$("#id_wrong").html("아이디를 입력해주세요.");
			}else if(!regex.test(val)){
				$("#id_wrong").html("아이디는 영문, 숫자 총 5자 이상 15자 이하로 작성해주세요.");
			}else{
				$("#id_wrong").html("");
			}
	})	
	
	});
</script>
</head>
<body class="w3-theme-l5">
	<div class="container">
		<div class="form-group">
		<form>
			<label><b>아이디</b></label>
			<div class="input-group">
				<div class="input-group-addon">
					<i class="fa fa-user-circle-o"></i>
				</div>
				<input type="text" class="form-control pull-right" id="id">
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
						data-title="m">남자</a> <a class="btn btn-primary btn-sm notActive"
						data-toggle="sex" data-title="w">여자</a>
				</div>
				<input type="hidden" name="sex" id="sex">
				<script>
    	$('#radioBtn a').on('click', function(){
    	    var sel = $(this).data('title');
    	    var tog = $(this).data('toggle');
    	    $('#'+tog).prop('value', sel);
    	    
    	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
    	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
    	})
    	</script>
			</div>
			<br>
		<button class="btn btn-primary"type="submit">회원가입</button>
</form>

		</div>
	</div>
</body>
</html>