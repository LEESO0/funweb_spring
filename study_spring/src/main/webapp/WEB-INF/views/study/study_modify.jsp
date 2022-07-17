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
			$("#study_space").html("지역 <input type='text' name='study_space' value='${study.study_space}'>");
		});
		$("#type2").on("click", function() {
			$("#study_space").html("");
		});
	});
</script>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<div id="modify_study_form">
			<form action="modifyStudy" method="post">
				<input type="hidden" name="study_idx" value="${param.study_idx }">
				<input type="hidden" name="pageNum" value="${param.pageNum }">
				<div id="study_type">
					분야
					<input type="radio" name="study_type" value="수능"
						<c:if test="${study.study_type eq '수능' }"> checked </c:if>> 수능
					<input type="radio" name="study_type" value="공무원"
						<c:if test="${study.study_type eq '공무원' }"> checked </c:if>> 공무원
					<input type="radio" name="study_type" value="면접"
						<c:if test="${study.study_type eq '면접' }"> checked </c:if>> 면접
					<input type="radio" name="study_type" value="자격증"
						<c:if test="${study.study_type eq '자격증' }"> checked </c:if>> 자격증
					<input type="radio" name="study_type" value="어학"
						<c:if test="${study.study_type eq '어학' }"> checked </c:if>> 어학
					<input type="radio" name="study_type" value="기타"
						<c:if test="${study.study_type eq '기타' }"> checked </c:if>> 기타
				</div>
				<div id="study_time">
					시간
					<input type="radio" name="study_time" value="평일"
						<c:if test="${study.study_time eq '평일' }"> checked </c:if>> 평일
					<input type="radio" name="study_time" value="주말"
						<c:if test="${study.study_time eq '주말' }"> checked </c:if>> 주말
				</div>
				<div id="study_num_of_people">
					모집인원
					<input type="text" name="study_num_of_people" value="${study.study_num_of_people }"> 명
				</div>
				<div id="study_contact_type">
					<input type="radio" id="type1" name="study_contact_type" value="대면"
						<c:if test="${study.study_contact_type eq '대면' }"> checked </c:if>> 대면
					<input type="radio" id="type2" name="study_contact_type" value="비대면"
						<c:if test="${study.study_contact_type eq '비대면' }"> checked </c:if>> 비대면
				</div>
				<div id="study_space">
					<c:if test="${study.study_space ne null and study.study_space ne ''}">
						지역 <input type='text' name='study_space' value='${study.study_space}'>
					</c:if>
				</div>
				
				<hr>
				
				<div id="study_subject">
					제목 <input type="text" name="study_subject" value="${study.study_subject }">
				</div>
				내용 <textarea rows="" cols="" name="study_content">${study.study_content }</textarea>
				
				<div id="submit_study">
					<input type="submit" value="MODIFY">
				</div>
			</form>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>