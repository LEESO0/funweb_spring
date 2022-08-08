<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-inc">
		<div class="row" id="contatner_inc_header">
			<div class="col-8 align-self-center" onclick="location.href='./'" id="logo">STUDY</div>
<!-- 			<div class="col-2 align-self-center"><input type="text"></div> -->
			<div class="col-2 align-self-center" style="padding-left: 60px;" onclick="location.href='community'">COMMUNITY</div>
			<c:choose>
				<c:when test="${sessionScope.sId eq null }">
					<div class="col-1 align-self-center" onclick="location.href='login'">LOGIN</div>
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