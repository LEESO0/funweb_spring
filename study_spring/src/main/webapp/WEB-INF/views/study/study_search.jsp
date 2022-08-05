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
<!-- icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
<script type="text/javascript">
$(function() {
	$("#contact_type1").on("click", function() {
		$("#study_space").html("<input type='text' class='input_box' name='study_space' placeholder='지역을 입력하세요'>");
	});
	$("#contact_type2").on("click", function() {
		$("#study_space").html("");
	});
	$("#search_submit_icon").on("click", function() {
		$("#search_submit").click();
	});
	$("#search_reset_icon").on("click", function() {
		$("#search_reset").click();
	});
	$("#filter_submit_icon").on("click", function() {
		$("#study_search_filter input[type='submit']").click();
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
					<input type="radio" name="study_type" id="study_type1" value="수능" <c:if test="${study.study_type eq '수능' }"> checked </c:if>><label for="study_type1">수능</label>
					<input type="radio" name="study_type" id="study_type2" value="공무원" <c:if test="${study.study_type eq '공무원' }"> checked </c:if>> <label for="study_type2">공무원</label>
					<input type="radio" name="study_type" id="study_type3" value="면접" <c:if test="${study.study_type eq '면접' }"> checked </c:if>> <label for="study_type3">면접</label>
					<input type="radio" name="study_type" id="study_type4" value="자격증" <c:if test="${study.study_type eq '자격증' }"> checked </c:if>> <label for="study_type4">자격증</label>
					<input type="radio" name="study_type" id="study_type5" value="어학" <c:if test="${study.study_type eq '어학' }"> checked </c:if>> <label for="study_type5">어학</label>
					<input type="radio" name="study_type" id="study_type6" value="기타" <c:if test="${study.study_type eq '기타' }"> checked </c:if>> <label for="study_type6">기타</label>
				</div>
				<div id="study_time">
					<input type="radio" name="study_time" id="study_time1" value="평일" <c:if test="${study.study_time eq '평일' }"> checked </c:if>> <label for="study_time1">평일</label>
					<input type="radio" name="study_time" id="study_time2" value="주말" <c:if test="${study.study_time eq '주말' }"> checked </c:if>> <label for="study_time2">주말</label>
				</div>
<!-- 				<div id="study_num_of_people"> -->
<!-- 					모집인원 -->
<!-- 					<input type="text" name="study_num_of_people"> 명 -->
<!-- 				</div> -->
				<div id="study_contact_type">
					<input type="radio" id="contact_type1" name="study_contact_type" value="대면" <c:if test="${study.study_contact_type eq '대면' }"> checked </c:if>> <label for="contact_type1">대면</label>
					<input type="radio" id="contact_type2" name="study_contact_type" value="비대면" <c:if test="${study.study_contact_type eq '비대면' }"> checked </c:if>> <label for="contact_type2">비대면</label>
				</div>
				<div id="study_space"></div>
				
				<div id="submit_study_condition">
					<input type="submit" id="search_submit" style="display: none;">
					<span class="material-symbols-outlined search_submit_icon" id="search_submit_icon">
						search
					</span>
					<input type="reset" id="search_reset" style="display: none;">
					<span class="material-symbols-outlined search_reset_icon" id="search_reset_icon">
						undo
					</span>
				</div>
			</form>
		</div>
				
			<div style="clear: both;"></div>
			
		<div class="container_1200_area">
			<div id="study_search_filter">
				<form action="search" method="get">
					<input type="hidden" name="study_type" value="${study.study_type }">
					<input type="hidden" name="study_time" value="${study.study_time }">
					<input type="hidden" name="study_num_of_people" value="${study.study_num_of_people }">
					<input type="hidden" name="study_contact_type" value="${study.study_contact_type }">
					<div id="search_keyword_filter">
						<select name="search_filter1" id="filter1">
							<option value="search_ing" <c:if test="${search_filter1 eq 'search_ing' }"> selected </c:if>>모집중</option>
							<option value="search_done" <c:if test="${search_filter1 eq 'search_done' }"> selected </c:if>>모집완료</option>
						</select>
						<select name="search_filter2" id="filter2">
							<option value="search_subject" <c:if test="${search_filter2 eq 'search_subject' }"> selected </c:if>>제목</option>
							<option value="search_content" <c:if test="${search_filter2 eq 'search_content' }"> selected </c:if>>내용</option>
						</select>
						<input type="text" name="search_keyword" value="${search_keyword }">
						<input type="submit" value="검색" style="display: none;">
						<span class="material-symbols-outlined search_submit_icon" id="filter_submit_icon">
							search
						</span>
					</div>
				</form>
			</div>
			
			<div id="search_result_area">
				<c:forEach items="${studyList }" var="study">
					<div class="study_card" onclick="location.href='studyView?study_idx=${study.study_idx}&pageNum=${pageInfo.pageNum }'">
						<div>
							<div class="study_card_subject">${study.study_subject }</div>
							<c:choose>
								<c:when test="${study.study_status eq 'Y' }">
									<div class="study_card_status">모집중</div>
								</c:when>
								<c:otherwise>
									<div class="study_card_status">모집중</div>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="study_card_condition">
							<span class="study_card1">${study.study_type }</span>
							<span class="study_card2">${study.study_time }</span>
							<span class="study_card1">${study.study_num_of_people }명</span><br>
							<span class="study_card2">${study.study_contact_type }</span>
							<c:if test="${study.study_space ne '' }">
								<span class="study_card1">${study.study_space }</span>
							</c:if>
						</div>
						<div class="study_card_intro">
							${study.study_intro }
						</div>
					</div>
				</c:forEach>
			</div>
			
			<div class ="paging">
				<c:choose>
					<c:when test="${pageInfo.pageNum > 1 }">
						<button type="button" onclick="location.href='search?pageNum=${pageInfo.pageNum - 1 }'">
							<span class="material-symbols-outlined page_icon">
								arrow_back_ios
							</span>
						</button>
					</c:when>
					<c:otherwise>
						<button type="button">
							<span class="material-symbols-outlined page_icon">
								arrow_back_ios
							</span>
						</button>
					</c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
					<c:choose>
					<c:when test="${pageInfo.pageNum eq i }">
						<span class="page_num">${i }</span>
					</c:when>
					<c:otherwise>
						<a href="search?pageNum=${i }">${i }</a>
					</c:otherwise>
				</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pageInfo.pageNum < pageInfo.maxPage }">
						<button type="button" onclick="location.href='search?pageNum=${pageInfo.pageNum + 1 }'">
							<span class="material-symbols-outlined page_icon">
								arrow_forward_ios
							</span>
						</button>
					</c:when>
					<c:otherwise>
						<button type="button">
							<span class="material-symbols-outlined page_icon">
								arrow_forward_ios
							</span>
						</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<div class="push"></div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>