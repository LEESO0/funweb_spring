<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* --- header --- */
.container-inc {
	width: 100%;
	max-width:none!important;
	background-color: #6E85B7;
	padding-top: 20px;
	padding-bottom: 20px;
}
#contatner_inc_header {
	width: 1200px;
	margin: 0 auto;
	color: white;
}
#contatner_inc_header > .col-1 {
	text-align: center;
}
/* ------------- */
</style>
</head>
<body>
	<div class="container-inc">
		<div class="row" id="contatner_inc_header">
			<div class="col-6 fs-1 align-self-center" onclick="location.href='./'" id="logo">STUDY</div>
			<div class="col-2 align-self-center"><input type="text"></div>
			<div class="col-2 align-self-center" style="padding-left: 60px;" onclick="location.href='community'">COMMUNITY</div>
			<c:choose>
				<c:when test="${sessionScope.sId eq null }">
					<div class="col-1 align-self-center" onclick="location.href='loginHow'">LOGIN</div>
					<div class="col-1 align-self-center" onclick="location.href='join'">JOIN</div>	
				</c:when>
				<c:when test="${sessionScope.sId ne null }">
					<div class="col-1 align-self-center" onclick="location.href='mypage'"><a>${sessionScope.sId }</a>님</div>
					<div class="col-1 align-self-center" onclick="location.href='logout'">LOGOUT</div>
				</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>