<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community Create♩</title>
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
	<!-- header -->
	<jsp:include page="../inc/header.jsp"/>
	<!------------>

	<div class="container">
		
		<div id="commu_create_form">
			<form action="">
				<div id="commu_subject">
					제목 <input type="text">
				</div>
				<div id="commu_content">
					내용 <textarea rows="" cols=""></textarea>
				</div>
				<div id="submit_commu">
					<input type="submit" value="CREATE">
				</div>
			</form>
		</div>
		
	</div>
	<!-- footer -->
	<jsp:include page="../inc/footer.jsp"/>
	<!------------>
</body>
</html>