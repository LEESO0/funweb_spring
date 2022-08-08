<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community♩</title>
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
<script type="text/javascript">
$(function() {
	$("#filter_submit_icon").on("click", function() {
		$(".commu_search_filter input[type='submit']").click();
	});
});
</script>
<style type="text/css">
.container{
	width:1920px;
	padding: 0px; 
	max-width:none!important;
}
.commu_list_ul {
	width: 100%;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../inc/header.jsp"/>
	<!------------>
	<div class="container_1200_area">
		
		<!-- 인기글 5개 -->
		
		<div class="commu_search_filter">
			<form action="community">
				<div class="search_keyword_filter">
					<select name="search_filter1" id="commu_filter1">
						<option value="latest" <c:if test="${search_filter1 eq 'latest' }"> selected </c:if>>최신순</option>
						<option value="readCount" <c:if test="${search_filter1 eq 'readCount' }"> selected </c:if>>조회순</option>
						<option value="like" <c:if test="${search_filter1 eq 'like' }"> selected </c:if>>좋아요순</option>
					</select>
					<select name="search_filter2" id="commu_filter2">
						<option value="search_subject" <c:if test="${search_filter2 eq 'search_subject' }"> selected </c:if>>제목</option>
						<option value="search_content" <c:if test="${search_filter2 eq 'search_content' }"> selected </c:if>>내용</option>
					</select>
					<input type="text" name="search_keyword" value="${search_keyword }">
					<input type="submit" value="검색" style="display: none;">
					<span class="material-symbols-outlined search_submit_icon" id="filter_submit_icon">
						search
					</span>
					<div id="commu_create">
						<input type="button" value="CREATE">
					</div>
				</div>
			</form>
			
		</div>
		<div id="commu_list">
			<table id="commu_list_table">
				<tr>
					<th>No</th>
					<th>Subject</th>
					<th>Like</th>
					<th>Writer</th>
					<th>Date</th>
				</tr>
				<c:forEach items="${articleList }" var="article">
					<tr onclick="location.href='articleView?commu_idx=${article.commu_idx}&pageNum=${pageInfo.pageNum }'">
						<td width="50px" class="td_center">${article.commu_idx }</td>
						<td width="900px">${article.commu_subject }(댓글개수)</td>
						<td width="50px" class="td_center">${article.commu_like }</td>
						<td width="100px" class="td_center">${article.member_name }</td>
						<td width="100px" class="td_center">${article.commu_date }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div class ="paging">
			<c:choose>
				<c:when test="${pageInfo.pageNum > 1 }">
					<button type="button" onclick="location.href='community?pageNum=${pageInfo.pageNum - 1 }'">
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
					<a href="community?pageNum=${i }">${i }</a>
				</c:otherwise>
			</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${pageInfo.pageNum < pageInfo.maxPage }">
					<button type="button" onclick="location.href='community?pageNum=${pageInfo.pageNum + 1 }'">
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
		
		<div class="push"></div>
		
	</div>
	<!-- footer -->
	<jsp:include page="../inc/footer.jsp"/>
	<!------------>
</body>
</html>