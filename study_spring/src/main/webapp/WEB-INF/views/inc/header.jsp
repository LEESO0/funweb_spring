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
	<div class="row">
		<div class="col-6">study</div>
		<div class="col-3"><input type="text"></div>
		<div class="col-1">community</div>
		<c:choose>
			<c:when test="${sessionScope.sId eq null }">
				<div class="col-1" onclick="location.href='loginHow'">login</div>
				<div class="col-1" onclick="location.href='join'">join</div>	
			</c:when>
			<c:when test="${sessionScope.sId ne null }">
				<div class="col-1" onclick="location.href='mypage'"><a>${sessionScope.sId }</a>님</div>
				<div class="col-1" onclick="location.href='logout'">logout</div>
			</c:when>
		</c:choose>
		
	</div>
		<hr>
</body>
</html>