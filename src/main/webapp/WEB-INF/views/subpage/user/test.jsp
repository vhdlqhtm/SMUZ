<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Angular js import -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- ---------------------->
<style type="text/css">

.fail{
color:red;
}
.true{
color:blue;
}
.container{
	width: 500px;
	margin : 0 auto;
}

.form-control{
	width: 200px;
	display:inline-block;
}

label{
	display:block;
}

</style>
<script type="text/javascript">

$(function(){
//아이디 중복체크
var id;
$("#sm_check").click(function() {
	id = $("#userid").val();
	//ID검사식
    var re_id = /^[a-z0-9_-]{3,16}$/,
	uid = $('#userid');
	if (re_id.test(uid.val()) != true) { // 아이디 검사
		$("#chk").removeClass("true");
		$("#chk").addClass("fail");
		
		document.getElementById("chk").innerHTML="[ID 입력 오류] 유효한 ID를 입력해 주세요.";
		uid.focus();
		return false;
	}
 
			$.ajax({
				
				url : "${path}/member/sm_check.do", //url : 접근해야할 컨트롤의 아이디
				type : "post", //type : 데이터 전송방식
				data : {"sm_id": id}, 
				dataType : "JSON", //dataType : 요청하는 데이터 타입
				success : function(data) { //success : 정상적으로 함수가 읽어오면 시행 - Data명 임의로 수정가능
					//중복체크 아이디 변수
					btn = document.getElementById('sm_check');
					if(data=="1"){ //id_check 컨트롤러에서 던져주는 값을비교 (String형으로 넘어옴)
						$("#chk").addClass("fail"); // 실행시 빨간색으로 변경해줌(style에 지정함)
						document.getElementById("chk").innerHTML="이미 가입되어 있는 아이디 입니다."; //해당메시지 보여짐
						//아이디값이 중복되면 아이디란을 초기화 시켜줌.
						document.getElementById("userid").value="";
					}else{
						 disabled="disabled"
						$("#chk").removeClass("fail");
						$("#chk").addClass("true");
						document.getElementById("chk").innerHTML="사용가능 아이디 입니다.";
						btn.disabled = 'Y';
					}
					
				}
			});

			return false;
			
		});
	//아이디 입력란 초기화
	$('#userid').click(function(){
		document.getElementById("userid").value="";
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
        document.getElementById('year').value = age; //현재 나이가 나옴
        }
    });
    
    //비밀번호 유효성 검사
    $('#pass_check').keyup(function(){
    	   if($('#pass').val()!=$('#pass_check').val()){
    	    $('font[name=check]').text('');
    	    $('font[name=check]').html("암호가 맞지 않습니다.");
    	    document.getElementById("#pass").value="";
    	    document.getElementById("#pass_check").value="";
    	   }else{
    	    $('font[name=check]').text('');
    	    $('font[name=check]').html("확인완료");
    	   }
    	  }); //#chpass.keyup
    	  
    	  
    	  $("#sm_submit").click(function() {
    		   /* if(!$("#userid").val()){
    			  alert("아이디를 입력하세요.");
    			  return false;
    		  } 
    		  
    		  //중복체크 버튼이 눌렸는지 확인
    		  if(!$("#sm_check").is(":disabled")){
    			  alert("아이디 중복확인을 해주세요.");
    			  return false;
    		  } */
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
    		  /* if(!$("#name").val()){
    			  alert("이름을 입력하세요.");
    			  return false;
    		  } 
    		  if(!$("#datepicker").val()){
    			  alert("생년월일을 입력하세요");
    			  return false;
    		  } 
    		  //라디오 버튼 체크 여부 확인
    		  if(!$(':input:radio[name=sm_sex]:checked').val()) {
    			    alert("섹션을 선택해주세요.");
    		  }  */


    		  
    	  });
	
});

function inputIdChk(){
	
}
</script>
</head>

<body>

<div class="container">
  <h2>Form control: input</h2>
  <p>The for</p>
  <form method="post" action="${path}/member/insert.do">
    <div class="form-group">
<button id="test" name="id_test" type="button" class="btn">회원가입_테스트버튼</button>    
      <label for="usr">아이디</label>
      <input type="text" class="form-control" name="sm_id" id="userid" placeholder="아이디" onkeydown="">
      <button type="button" class="btn" id ="sm_check" >ID중복확인</button>
      <!-- <input type="hidden" name="idDuplication" value="idUncheck">  -->
      <p id="chk"></p> <!-- 위에서 innerHTML 을 이용하면  내용이 입력된다.  -->
    </div>
    
    <div class="form-group">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" id="pass" name="sm_password" placeholder="비밀번호">
      <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
    </div>
    
    <div class="form-group">
      <label for="pwd">비밀번호 확인</label>
      <input type="password" class="form-control" id="pass_check" name="sm_passwordcheck" placeholder="비밀번호 확인"/>
      <p class="help-block">비밀번호 확인</p><font name="check" size="2" color="red"></font> 
    </div>
    
    <div class="form-group">
      <label for="pwd">이름</label>
      <input type="text" class="form-control" id="name" name="sm_name" placeholder="이름">
    </div>
    
    <div class="form-group">
    <label for="birthdate"> 생년월일  </label>
	<input type="text" id="datepicker" name="sm_birth" placeholder="클릭해보세요">
	</div>
	
	<div class="form-group">
	<!-- 나이 (쓸것이지만 회원가입화면에는 안보이는게 좋으니 숨겨둠) -->
	<input type="hidden" id="year" name="sm_age">
	</div>
    
    <!-- 라디오 -->
    <div class="form-group">
    <label for="usr">성별</label>
    <label class="radio-inline">
      <input type="radio" id="sex" name="sm_sex" value="남">남성
    </label>
    <label class="radio-inline">
      <input type="radio" id="sex" name="sm_sex" value="여">여성
    </label>
    </div>
    
    
    
    <!-- 체크박스 -->
    <!-- <div class="form-group">
    <label for="usr">자주듣는 장르 선택(3개 이상)</label>
    <label class="checkbox-inline">
      <input type="checkbox" name="sm_box[]" value="balad">발라드
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" name="sm_box[]" value="hiphop"> 힙합
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" name="sm_box[]" value="rock"> 락
    </label>
    </div> -->
    
    <div>
      <button id="sm_submit" type="submit" class="btn btn-primary active">회원가입</button>    
    </div>
    <!-- 회원가입에 보면 disabled있는데 이러면 클릭할수없음 약관동의하면 active로 바꿔주는기능해주기 -->
    <!--  <input type="submit" value="회원가입">-->
  </form>
</div>

</body>
</html>
