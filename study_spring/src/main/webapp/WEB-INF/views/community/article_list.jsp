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
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<div id="commu_search_create" class="d-flex justify-content-between">
			<div id="commu_search" class="mx-3">
				<form action="community">
					<select name="search_filter1">
						<option value="latest" <c:if test="${search_filter1 eq 'latest' }"> selected </c:if>>최신순</option>
						<option value="readCount" <c:if test="${search_filter1 eq 'readCount' }"> selected </c:if>>조회순</option>
						<option value="like" <c:if test="${search_filter1 eq 'like' }"> selected </c:if>>좋아요순</option>
					</select>
					<select name="search_filter2">
						<option value="search_subject" <c:if test="${search_filter2 eq 'search_subject' }"> selected </c:if>>제목</option>
						<option value="search_content" <c:if test="${search_filter2 eq 'search_content' }"> selected </c:if>>내용</option>
					</select>
					<input type="text" name="search_keyword" value="${search_keyword }"><input type="submit" value="검색">
				</form>
			</div>
			
			<div id="commu_create">
				<input type="button" value="CREATE" class="mx-3">
			</div>
		</div>
		<div id="commu_list">
			<table id="commu_list_table" class="table table-hover">
				<c:forEach items="${articleList }" var="article">
					<tr onclick="location.href='articleView?commu_idx=${article.commu_idx}&pageNum=${pageInfo.pageNum }'">
						<td class="col-8">
							<span>${article.commu_idx }</span><br>
							<span>${article.commu_subject }</span>
						</td>
						<td class="col-2">${article.commu_like }</td>
						<td class="col-2">
							<span>${article.member_name }</span><br>
							<span>${article.commu_date }</span>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>