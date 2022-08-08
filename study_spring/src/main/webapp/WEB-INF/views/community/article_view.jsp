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
	height:1000px;
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
		<div id="article_detail_area">
			<div class="subject">${article.commu_subject }</div>
			<div id="commu_top">
				<span class="writer">이미지 ${article.member_id }</span>
				<span class="write_date">${article.commu_date }</span>
				<span class="readcount">${article.commu_readcount }</span>
				<span class="likecount">${article.commu_like }like</span>
			</div>
			<div id="commu_content">
				${article.commu_content }
			</div>
			
			<div id="mngBtn_article">
				<c:choose>
					<c:when test="${article.member_id eq sessionScope.sId }">
						<input type="button" value="수정" onclick="location.href='modifyArticle?commu_idx=${param.commu_idx }&pageNum=${pageNum }'">
						<input type="button" value="삭제" onclick="location.href='deleteArticle?commu_idx=${param.commu_idx }'">
					</c:when>
					<c:when test="${article.member_id ne sessionScope.sId }">
					</c:when>
				</c:choose>
			</div>
			
			<div id="comment_area">
				<h3>COMMENT</h3>
				<div class="insert_comment">
					<textarea id="comment_content"></textarea>
					<input type="button" id="submit_comment" value="작성">
					<!-- textarea value값, article_idx, member_id(session) ajax로 넘겨서 처리 (서블릿주소: insertComment) -->
				</div>
				
				<div class="comment_list">
					<!-- 반복 -->
					<div class="comment_left">
						이미지
					</div>
					<div class="comment_right">
						<div class="comment_writer">
							누ㅜㄱ
						</div>
						<div class="comment_date">
							2022.02.02
						</div>
						<div class="comment_content">
							뭐시기뭐ㅣ기뭐시구머시
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	
	<div class="push"></div>
	
	<!-- footer -->
	<jsp:include page="../inc/footer.jsp"/>
	<!------------>
</body>
</html>