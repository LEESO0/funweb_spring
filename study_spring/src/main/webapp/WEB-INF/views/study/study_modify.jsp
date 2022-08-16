<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Modify♩</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<!----- icon ------>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!----------------->
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
	$("#type1").on("click", function() {
		$("#study_space").attr("disabled", false);
		$("#study_space").attr("placeholder", "");
	});
	$("#type2").on("click", function() {
		$("#study_space").val("");
		$("#study_space").attr("disabled", true);
		$("#study_space").attr("placeholder", "비대면 시 선택 불가");
	});
});
</script>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<div class="container_1200_area">
			<form action="modifyStudy" method="post">
				<input type="hidden" name="study_idx" value="${param.study_idx }">
				<input type="hidden" name="pageNum" value="${param.pageNum }">
				<ul class="select_condition">
					<li>
						<span><input type="radio" name="study_type" id="study_type1" value="수능"
							<c:if test="${study.study_type eq '수능' }"> checked </c:if>><label for="study_type1">수능</label></span>
						<span><input type="radio" name="study_type" id="study_type2" value="공무원"
							<c:if test="${study.study_type eq '공무원' }"> checked </c:if>><label for="study_type2">공무원</label></span>
						<span><input type="radio" name="study_type" id="study_type3" value="면접"
							<c:if test="${study.study_type eq '면접' }"> checked </c:if>><label for="study_type3">면접</label></span>
						<span><input type="radio" name="study_type" id="study_type4" value="자격증"
							<c:if test="${study.study_type eq '자격증' }"> checked </c:if>><label for="study_type4">자격증</label></span>
						<span><input type="radio" name="study_type" id="study_type5" value="어학"
							<c:if test="${study.study_type eq '어학' }"> checked </c:if>><label for="study_type5">어학</label></span>
						<span><input type="radio" name="study_type" id="study_type6" value="기타"
							<c:if test="${study.study_type eq '기타' }"> checked </c:if>><label for="study_type6">기타</label></span>
					</li>
					<li id="study_time">
						<span><input type="radio" name="study_time" id="study_time1" value="평일"
							<c:if test="${study.study_time eq '평일' }"> checked </c:if>><label for="study_time1">평일</label></span>
						<span><input type="radio" name="study_time" id="study_time2" value="주말"
							<c:if test="${study.study_time eq '주말' }"> checked </c:if>><label for="study_time2">주말</label></span>
					</li>
					<li id="study_contact_type">
						<span><input type="radio" id="type1" name="study_contact_type" value="대면"
							<c:if test="${study.study_contact_type eq '대면' }"> checked </c:if>><label for="type1">대면</label></span>
						<span><input type="radio" id="type2" name="study_contact_type" value="비대면"
							<c:if test="${study.study_contact_type eq '비대면' }"> checked </c:if>><label for="type2">비대면</label></span>
					</li>
					<li>
						<span>지역</span> 
						<span><input type="text" id="study_space" name="study_space" value="${study.study_space }"></span>
					</li>
					<li id="study_num_of_people">
						<span>모집인원</span> 
						<span><input type="number" min="1" max="20" name="study_num_of_people" value="${study.study_num_of_people }"> 명</span> 
					</li>
				</ul>
				
				<ul class="insert_study_create">
					<li><input type="text" name="study_subject" placeholder="제목" value="${study.study_subject }"></li>
					<li><input type="text" name="study_intro" placeholder="한줄소개" value="${study.study_intro }"></li>
					<li class="insert_study_create_content"><textarea name="study_content">${study.study_content }</textarea></li>
					<li><input type="submit" value="MODIFY"></li>
				</ul>
			</form>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>