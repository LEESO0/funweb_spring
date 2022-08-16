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
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		<div class="container_1200_area">
			
			<div id="study_detail_area">
				<div class="study_detail_top1">
					<span id="study_subject">${study.study_subject }</span>
					<c:choose>
						<c:when test="${study.study_status eq 'Y' }">
							<span id="study_status">모집중</span>
						</c:when>
						<c:when test="${study.study_status eq 'N' }">
							<span id="study_status">모집완료</span>
						</c:when>
					</c:choose>
					<span id="study_readcount">조회수 ${study.study_readcount }</span><br>
					<span id="study_intro">${study.study_intro }</span><br>
					<span id="study_date">${study.study_date }</span>
				</div>
				
				<div class="study_detail_top2">
					<span>${study.member_name }</span>
				</div>
				
				<div class="study_detail_condition">
					<span id="study_type">${study.study_type }</span>
					<span id="study_time">${study.study_time }</span>
					<span id="study_contact_type">${study.study_contact_type }</span>
					<c:if test="${study.study_space ne '' && study.study_space ne null }">
						<span id="study_space">${study.study_space }</span>
					</c:if>
					<span id="study_num_of_people">${study.study_num_of_people } 명</span>
					<span id="study_like">LIKE</span>
				</div>
				
				<div id="study_content">
					${study.study_content }
				</div>
				
				<div id="register_study">
					<c:choose>
						<c:when test="${study.member_id eq sessionScope.sId }">
							<input type="button" value="MODIFY" onclick="location.href='modifyStudy?study_idx=${param.study_idx }&pageNum=${pageNum }'">
							<input type="button" value="DELETE" onclick="location.href='deleteStudy?study_idx=${param.study_idx }'">
						</c:when>
						<c:when test="${study.member_id ne sessionScope.sId }">
							<input type="button" value="REGISTER" onclick="location.href='register?study_idx=${param.study_idx }&pageNum=${pageNum }'">
							<input type="button" value="1:1 TALK">
						</c:when>
					</c:choose>
				</div>
				
				<div class="push"></div>
				
			</div>
			
			
		</div>
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>