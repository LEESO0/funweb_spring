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
	width:1200px; 
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
		
		<div id="article_detail_area">
			<div id="commu_subject">
				${article.commu_subject }
			</div>
			<div id="commu_content">
				${article.commu_content }
			</div>
			<div id="member_id">
				${article.member_id }
			</div>
			<div id="commu_readcount">
				${article.commu_readcount } 명
			</div>
			<div id="commu_date">
				${article.commu_date }
			</div>
		</div>
		
		<div id="register_article">
			<c:choose>
				<c:when test="${article.member_id eq sessionScope.sId }">
					<input type="button" value="수정" onclick="location.href='modifyArticle?commu_idx=${param.commu_idx }&pageNum=${pageNum }'">
				</c:when>
				<c:when test="${article.member_id ne sessionScope.sId }">
				</c:when>
			</c:choose>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>