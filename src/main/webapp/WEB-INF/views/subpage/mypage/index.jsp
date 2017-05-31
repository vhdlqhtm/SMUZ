<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<title>SMUZ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
#cl-dashboard {
	display: none;
}

.tab_list {
	text-align: center;
}
</style>
<body>

	<!-- 2017-05-25 (html & script) -->

	<div class="w3-container">
		<jsp:include page="hedaer.jsp" />
		<div class="w3-row">
			<a href="javascript:void(0)" class="tab_list"
				onclick="openCity(event, 'tab1');">
				<div
					class="w3-col m3 tablink w3-bottombar w3-hover-light-grey w3-padding w3-border-red">마이
					피드</div>
			</a> <a href="javascript:void(0)" class="tab_list"
				onclick="openCity(event, 'tab2');">
				<div
					class="w3-col m3 tablink w3-bottombar w3-hover-light-grey w3-padding">마이
					리스트</div>
			</a> <a href="javascript:void(0)" class="tab_list"
				onclick="openCity(event, 'tab3');">
				<div
					class="w3-col m3 tablink w3-bottombar w3-hover-light-grey w3-padding">팔로우
					소식</div>
			</a> <a href="javascript:void(0)" class="tab_list"
				onclick="openCity(event, 'tab4');">
				<div
					class="w3-col m3 tablink w3-bottombar w3-hover-light-grey w3-padding">SMUZ
					추천</div>
			</a>
		</div>

		<div id="tab1" class="w3-container tab">
			<jsp:include page="sub4.jsp" />
		</div>

		<div id="tab2" class="w3-container tab" style="display: none">
			<jsp:include page="sub5.jsp" />
		</div>

		<div id="tab3" class="w3-container tab" style="display: none">
			<jsp:include page="sub2.jsp" />
		</div>

		<div id="tab4" class="w3-container tab" style="display: none">
			<jsp:include page="sub1.jsp" />
		</div>
	</div>

	<script>
		/*
		 * 2017-05-29
		 * tab page event script
		 */
	
		function openCity(evt, cityName) {
			var i, x, tablinks;
			x = document.getElementsByClassName("tab");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < x.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" w3-border-red", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.firstElementChild.className += " w3-border-red";
		}
	</script>

</body>
</html>