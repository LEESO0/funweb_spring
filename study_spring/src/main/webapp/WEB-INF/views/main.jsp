<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study with me♪</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<!-- css -->
<link rel="stylesheet" href="${path }/resources/css/default.css">
<!--------->
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="inc/header.jsp"/>
		<!------------>
		
		<div id="select_study_search_create">
			<div id="select_btn">
				<button type="button" class="btn-0" onclick="location.href='search'">SEARCH</button>
				<button type="button" class="btn-0" onclick="location.href='create'">CREATE</button>
			</div>
		</div>
		
		<div id="study_list_area">
			<div class="study_list_area_subject">BEST</div>
			<div id="best_readcount">
				<c:forEach items="${bestStudyList }" var="study">
					<div class="study_card" onclick="location.href='studyView?study_idx=${study.study_idx}&pageNum=${pageInfo.pageNum }'">
						<div>${study.study_subject } / ${study.study_status }</div>
						<div>
							<span>${study.study_type }</span>
							<span>${study.study_time }</span>
							<span>${study.study_num_of_people }</span>
							<span>${study.study_contact_type }</span>
							<span>${study.study_space }</span>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<hr>
			
			<div class="study_list_area_subject">RECOMMEND</div>
			<div id="recommend_study">
				<c:forEach items="${recommendStudyList }" var="study">
					<div class="study_card" onclick="location.href='studyView?study_idx=${study.study_idx}&pageNum=${pageInfo.pageNum }'">
						<div>${study.study_subject } / ${study.study_status }</div>
						<div>
							<span>${study.study_type }</span>
							<span>${study.study_time }</span>
							<span>${study.study_num_of_people }</span>
							<span>${study.study_contact_type }</span>
							<span>${study.study_space }</span>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="push"></div>
	</div>
		<!-- footer -->
		<jsp:include page="inc/footer.jsp"/>
		<!------------>
</body>
</html>