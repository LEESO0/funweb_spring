<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Detail♩</title>
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
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<div id="study_detail_area">
			<div id="study_type">
				${study.study_type }
			</div>
			<div id="study_time">
				${study.study_time }
			</div>
			<div id="study_num_of_people">
				${study.study_num_of_people } 명
			</div>
			<div id="study_contact_type">
				${study.study_contact_type }
			</div>
			<div id="study_space">
				${study.study_space }
			</div>
			
			<hr>
			
			<div id="member_name">
				${study.member_name }
			</div>
			<div id="study_subject">
				${study.study_subject }
			</div>
			<div id="study_content">
				${study.study_content }
			</div>
			<div id="study_date">
				${study.study_date }
			</div>
			<div id="study_readcount">
				${study.study_readcount }
			</div>
			<div id="study_status">
				${study.study_status }
			</div>
		</div>
		
		<div id="register_study">
			<c:choose>
				<c:when test="${study.member_id eq sessionScope.sId }">
					<input type="button" value="수정" onclick="location.href='modifyStudy?study_idx=${param.study_idx }&pageNum=${pageNum }'">
					<input type="button" value="삭제" onclick="location.href='deleteStudy?study_idx=${param.study_idx }'">
				</c:when>
				<c:when test="${study.member_id ne sessionScope.sId }">
					<input type="button" value="신청" onclick="location.href='register?study_idx=${param.study_idx }&pageNum=${pageNum }'">
					<input type="button" value="문의">
				</c:when>
			</c:choose>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>