<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Search♩</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<!-- jquery 3.6.0 -->
<script src="${path}/resources/js/jquery-3.6.0.js"></script>
<!------------------>
<style type="text/css">
.container{
	width:1200px; 
	max-width:none!important;
}
#select_study_condition {
	text-align: center;
}
#search_result_area {
	width: 100%;
	display: flex;
}
.study_card {
	width: 200px;
	height: 150px;
	margin: 20px;
	border: 1px solid black;
	padding: 10px;
	border-radius: 10px;
}
</style>
<script type="text/javascript">
$(function() {
	$("#type1").on("click", function() {
		$("#study_space").html("지역 <input type='text' name='study_space'>");
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
		
		<div id="select_study_condition">
			<form action="search" method="get">
				<div id="study_type">
					분야
					<input type="radio" name="study_type" value="수능" <c:if test="${study.study_type eq '수능' }"> checked </c:if>> 수능
					<input type="radio" name="study_type" value="공무원" <c:if test="${study.study_type eq '공무원' }"> checked </c:if>> 공무원
					<input type="radio" name="study_type" value="면접" <c:if test="${study.study_type eq '면접' }"> checked </c:if>> 면접
					<input type="radio" name="study_type" value="자격증" <c:if test="${study.study_type eq '자격증' }"> checked </c:if>> 자격증
					<input type="radio" name="study_type" value="어학" <c:if test="${study.study_type eq '어학' }"> checked </c:if>> 어학
					<input type="radio" name="study_type" value="기타" <c:if test="${study.study_type eq '기타' }"> checked </c:if>> 기타
				</div>
				<div id="study_time">
					시간
					<input type="radio" name="study_time" value="평일" <c:if test="${study.study_time eq '평일' }"> checked </c:if>> 평일
					<input type="radio" name="study_time" value="주말" <c:if test="${study.study_time eq '주말' }"> checked </c:if>> 주말
				</div>
<!-- 				<div id="study_num_of_people"> -->
<!-- 					모집인원 -->
<!-- 					<input type="text" name="study_num_of_people"> 명 -->
<!-- 				</div> -->
				<div id="study_contact_type">
					<input type="radio" id="type1" name="study_contact_type" value="대면" <c:if test="${study.study_contact_type eq '대면' }"> checked </c:if>> 대면
					<input type="radio" id="type2" name="study_contact_type" value="비대면" <c:if test="${study.study_contact_type eq '비대면' }"> checked </c:if>> 비대면
				</div>
				<div id="study_space"></div>
				
				<div id="submit_study_condition">
					<input type="submit" value="검색">
					<input type="reset" value="초기화">
				</div>
			</form>
		</div>
			
		<hr>
		
		<div id="study_search_filter">
			<form action="search" method="get">
				<input type="hidden" name="study_type" value="${study.study_type }">
				<input type="hidden" name="study_time" value="${study.study_time }">
				<input type="hidden" name="study_num_of_people" value="${study.study_num_of_people }">
				<input type="hidden" name="study_contact_type" value="${study.study_contact_type }">
				<div id="search_keyword_filter">
					<select name="search_filter1">
						<option value="search_ing" <c:if test="${search_filter1 eq 'search_ing' }"> selected </c:if>>모집중</option>
						<option value="search_done" <c:if test="${search_filter1 eq 'search_done' }"> selected </c:if>>모집완료</option>
					</select>
					<select name="search_filter2">
						<option value="search_subject" <c:if test="${search_filter2 eq 'search_subject' }"> selected </c:if>>제목</option>
						<option value="search_content" <c:if test="${search_filter2 eq 'search_content' }"> selected </c:if>>내용</option>
					</select>
					<input type="text" name="search_keyword" value="${search_keyword }"><input type="submit" value="검색">
				</div>
			</form>
		</div>
		
		<div id="search_result_area">
			<c:forEach items="${studyList }" var="study">
				<div class="study_card" onclick="location.href='studyView?study_idx=${study.study_idx}&page=${pageInfo.pageNum }'">
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
		
		<div class ="paging">
			<c:choose>
				<c:when test="${pageInfo.pageNum > 1 }">
					<input type="button" value=" < " onclick="location.href='search?pageNum=${pageInfo.pageNum - 1 }'">
				</c:when>
				<c:otherwise>
					<input type="button" value=" < ">
				</c:otherwise>
			</c:choose>
	
			<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
				<c:choose>
				<c:when test="${pageInfo.pageNum eq i }">
					${i }
				</c:when>
				<c:otherwise>
					<a href="search?pageNum=${i }">${i }</a>
				</c:otherwise>
			</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${pageInfo.pageNum < pageInfo.maxPage }">
					<input type="button" value=" > " onclick="location.href='search?pageNum=${pageInfo.pageNum + 1 }'">
				</c:when>
				<c:otherwise>
					<input type="button" value=" > ">
				</c:otherwise>
			</c:choose>
		</div>
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>