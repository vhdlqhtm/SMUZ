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
<%-- <script src="${path}/resources/js/bootstrap-datepicker.js"></script> --%>
<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- ---------------------->
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

.false{
	color:#FF0000 !important;
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
				$("#sm_check").css({"pointer-events":"none"}).click(function(e){e.preventDefault();});
			}else{
				$("#id_wrong").html("");
				$("#sm_check").css({"pointer-events":"auto"}).click(function(e){
					/*ajax이벤트를 걸어주시면 됩니다.*/
					
					$.ajax({
						url : "${path}/user/sm_check.do",
						type : "post", 
						data : {"sm_id": val},
						dataType : "JSON",
						success : function(data) {
							btn = document.getElementById('sm_check');
							if(data=="1"){
								//해당 명령어가 실행될시 색을 변경해주는(css)클래스를 초기화시켜줌(removeClass가)
							//$("#id_wrong").html(val+" "+"이미 사용중입니다.").removeClass("strong");
							//document.getElementById("id_wrong").innerHTML="이미 가입되어 있는 아이디 입니다.";
							$("#id_wrong").html("이미 사용중인 아이디 입니다.").addClass("false");
							$('#sm_check').removeClass("false");
							}else{
								disabled="disabled";
								//클래스를 add해서 글씨 색을 다시 지정
							$('#sm_check').removeClass("false");
							$("#id_wrong").html("사용가능한 아이디 입니다.").addClass("strong");
							btn.disabled = 'Y'
							
							}
						}
					});
					return false;
				});
			}
	
	});	
	
	//아이디 입력란 초기화
		$('#id').click(function(){
			document.getElementById("id").value="";
			$("#sm_check").attr("disabled", false);
		});
	
		 //datepicker 설정
	    $("#datepicker").datepicker({
	    	changeMonth: true,  //달을 선택할수 있는 셀렉트박스
	        changeYear: true, //년도를 선택할수 있는 셀렉트박스
	        dateFormat: 'yy-mm-dd',
	        minDate: '-100y', //최대로 표시할수 있는 년도수
	        yearRange: 'c-100:today', //년도 셀렉트 박스 스크롤에 표시할 년도수(현재년도부터 -100년까지만표시)
	    	//changeMonth 이 true 여야 아래옵션이 사용가능하다.
	        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	        onSelect: function(dateText, inst) { 
	        var date = $(this).datepicker('getDate'),
	        //day  = date.getDate(),  //현재 필요없어서 주석처리해놓음
	        //month = date.getMonth() + 1,              
	        year =  date.getFullYear(); //datepicker에서 선택한 년도 가져오는값
	        //현재날짜 계산
	        var now = new Date(); //Date 객체 생성 해서 변수에 담음
	        var now_year = now.getFullYear(); // 현재 연도를 뽑아 담음
	        var age = (now_year - year) + 1; // 현재연도 - 선택년도 + 1
	        document.getElementById('age').value = age; //현재 나이가 나옴
	        }
	    });
		 
	    $("#test").click(function(){
			 alert($("#sex").val());
		 });
		
	
	/*
	 * data pass
	 * dataType Json
	 */
		var id, password, name, birthday, sex, age, music, music_data, cnt;
		$("#submit").click(function(){
			
		//전체목록 유효성 검사
		  if(!$("#id").val()){
			  alert("아이디를 입력하세요.");
			  return false;
		  } 
		  
		  //중복체크 버튼이 눌렸는지 확인
		   if(!$("#sm_check").is(":disabled")){
			  alert("아이디 중복확인을 해주세요.");
			  return false;
		  } 
		  if(!$("#password").val()){
			  alert("비밀번호를 입력해주세요.");
			  return false;
		  }
		  
		  if(!$('#password_checked').val()){
			  alert("비밀번호 확인란을 입력해주세요.");
			  return false;
		  }
		  
		  if($('#password').val() != $('#password_checked').val()){
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
		 //체크박스 선택 여부 확인
			for(var i = 0; i < music.length; i++){
				if(music[i].checked == true){
					music_data[cnt] = music[i].value;
					cnt++;
				}
			}
		 	if(music_data.length < 3){
		 		alert('3개이상 체크해주세요');
		 		return false;
		 	}
			
			id = $("#id").val();
			password = $("#password").val();
			name = $("#name").val();
			birthday = $("#datepicker").val();
			age = $("#age").val();
			sex = $("#sex").val();
			
			// data pass ajax
			var alldata = {'sm_id':id, 'sm_password':password, 'sm_name':name, 'sm_birth':birthday, 'sm_age':age, 'sm_sex':sex, 'sm_music':music_data};
								
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
			alert("전송 완료");
			
			location.href='${path}/';
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
					<button type="button" id="sm_check" style="display: inline-block; background: none; border: none">중복확인</button>
				</div>
			</div>
			<p id="id_wrong" style="color:red;"></p>
			<!-- <p id="id_ok" style="color:blue;"></p> -->
			
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
				<input type="text" class="form-control pull-right" id="datepicker" name="sm_birth">
			</div>
			
			<div class="input-group">
			<!-- 나이 (쓸것이지만 회원가입화면에는 안보이는게 좋으니 숨겨둠) -->
			<input type="hidden" id="age" name="sm_age">
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