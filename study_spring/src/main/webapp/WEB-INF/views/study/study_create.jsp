<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Create♩</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<!------ css ------>
<link rel="stylesheet" href="${path }/resources/css/default.css">
<!----------------->
<!------ font ------>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!------------------>
<!-- jquery 3.6.0 -->
<script src="${path}/resources/js/jquery-3.6.0.js"></script>
<!------------------>
<style type="text/css">
.container{
	width:1920px;
	padding: 0px; 
	max-width:none!important;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#contact_type1").on("click", function() {
			$("#study_space").attr("disabled", false);
			$("#study_space").attr("placeholder", "");
		});
		$("#contact_type2").on("click", function() {
			$("#study_space").val("");
			$("#study_space").attr("disabled", true);
			$("#study_space").attr("placeholder", "비대면 시 선택 불가");
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../inc/header.jsp"/>
	<!------------>
	<div class="container_1200_area">
		<form action="create" method="post">
			<ul class="select_condition">
				<li>
					<span><input type="radio" name="study_type" id="study_type1" value="수능"><label for="study_type1">수능</label></span>
					<span><input type="radio" name="study_type" id="study_type2" value="공무원"><label for="study_type2">공무원</label></span>
					<span><input type="radio" name="study_type" id="study_type3" value="면접"><label for="study_type3">면접</label></span>
					<span><input type="radio" name="study_type" id="study_type4" value="자격증"><label for="study_type4">자격증</label></span>
					<span><input type="radio" name="study_type" id="study_type5" value="어학"><label for="study_type5">어학</label></span>
					<span><input type="radio" name="study_type" id="study_type6" value="기타"><label for="study_type6">기타</label></span>
				</li>
				<li class="study_time_create">
					<span><input type="radio" name="study_time" id="study_time1" value="평일"><label for="study_time1">평일</label></span>
					<span><input type="radio" name="study_time" id="study_time2" value="주말"><label for="study_time2">주말</label></span>
				</li>
				<li class="study_contact_type_create">
					<span><input type="radio" id="contact_type1" name="study_contact_type" value="대면"><label for="contact_type1">대면</label></span>
					<span><input type="radio" id="contact_type2" name="study_contact_type" value="비대면"><label for="contact_type2">비대면</label></span>
				</li>
				<li>
					<span>지역</span> 
					<span><input type="text" id="study_space" name="study_space"></span>
				</li>
				<li class="study_num_of_people">
					<span>모집인원</span> 
					<span><input type="number" min="1" max="20" name="study_num_of_people"> 명</span> 
				</li>
			</ul>
			<hr>
			
			<ul id="insert_study_create">
				<li><input type="text" name="study_subject" placeholder="제목"></li>
				<li><input type="text" name="study_intro" placeholder="한줄소개"></li>
				<li class="insert_study_create_content"><textarea name="study_content"></textarea></li>
				<li><input type="submit" value="CREATE"></li>
			</ul>
		</form>
	</div>
		
	<!-- footer -->
	<jsp:include page="../inc/footer.jsp"/>
	<!------------>
</body>
</html>