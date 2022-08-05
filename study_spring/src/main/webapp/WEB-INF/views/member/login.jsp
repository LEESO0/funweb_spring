<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join♩</title>
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
body {
	background-color: #C4D7E0;
}
.container{
	width:1920px;
	padding: 0px; 
	max-width:none!important;
}
#login_member {
	width: 400px;
	margin: 40px auto;
	padding: 50px;
	border: 0px;
	background-color: white;
	border-radius: 10px;
}
#login_member ul {
	padding: 0px;
	margin: 0px;
}
#login_member ul li {
	list-style-type: none;
	margin-top: 5px;	
}
#login_member ul li input[type='text'], input[type='password'] {
	width: 100%;
	height: 40px;
	margin-bottom: 3px;
}
#login_member ul li input[type='submit'] {
	width: 100%;
	height: 50px;
	background-color: black;
	color: white;
	border-radius: 5px;
}
#login_api {
	text-align: center;
}
img {
	width: 100%;
	margin: 5px 0px;
}
#login_menu {
	width: 100%;
	margin: 2px auto;
	text-align: right;
	font-size: 13px;
	color: gray;
}
</style>
</head>
<body>
	
	<div class="container">
		<div id="login_member">
			<form action="login" method="post">
				<ul>
					<li>
						<input type="text" name="member_id" placeholder="아이디">
					</li>
					<li>
						<input type="password" name="member_pass" placeholder="비밀번호">
					</li>
					<li>
						<input type="submit" value="LOGIN">
					</li>
				</ul>
			</form>
			<div id="login_menu">
				<span>아이디 찾기</span>
				<span>비밀번호 변경하기</span>
				<span>회원가입</span>
			</div>
			<div id="login_api">
				<img alt="kakao_login" src="${path }/resources/img/kakao_login.png">
				<img alt="naver_login" src="${path }/resources/img/naver_login.png">
			</div>
		</div>
	</div>
	
</body>
</html>