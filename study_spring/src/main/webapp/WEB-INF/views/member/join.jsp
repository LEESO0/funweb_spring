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
#insert_member_info {
	width: 550px;
	margin: 40px auto;
	padding: 35px 50px;
	border: 0px;
	background-color: white;
	border-radius: 10px;
}
#insert_member_info ul {
	padding: 0px;
}
#insert_member_info ul li {
	list-style-type: none;
	margin: 5px;
}
#insert_member_info ul li label {
	width: 200px;
	font-size: 20px;
}
.birth_input {
	width: 166px;
	margin-bottom: 15px;
	height: 50px;
}
.birth_select {
	width: 100px;
	height: 50px;
}
.join_input {
	width: 100%;
	height: 50px;
	margin-bottom: 15px;
}
#join_title {
	font-size: 40px;
	text-align: center;
}
.gender_select {
	width: 100%;
	height: 50px;
	margin-bottom: 15px;
}
#check_study_type {
	width: 100%;
	margin-bottom: 20px;
}
#check_study_type input[type='checkbox'] {
	margin-right: 3px;
}
#check_study_type .check_study_type_label {
	margin-right: 19px;
}
#insert_member_info ul li input[type='submit'] {
	width: 100%;
	height: 50px;
	background-color: black;
	color: white;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="container">
		<div id="insert_member_info">
			<div id="join_title">JOIN</div>
			<form action="join" method="post">
				<ul>
					<li>
						<label>아이디</label><br>
						<input type="text" name="member_id" placeholder="아이디" class="join_input">
					</li>
					<li>
						<label>비밀번호</label><br>
						<input type="password" name="member_pass" placeholder="비밀번호" class="join_input">
					</li>
					<li>
						<label>비밀번호 확인</label><br>
						<input type="password" placeholder="비밀번호 확인" class="join_input">
					</li>
					<li>
						<label>이름</label><br>
						<input type="text" name="member_name" placeholder="이름" class="join_input">
					</li>
					<li>
						<label>성별</label><br>
						<select name="member_gender" class="gender_select">
							<option>성별</option>
							<option value="남">남</option>
							<option value="여">여</option>
						</select>
					</li>
					<li>
						<label>생년월일</label><br>
						<input type="text" name="member_birth_year" placeholder="년도(4자리)" maxlength="4" class="birth_input">
						<select name="member_birth_month" class="birth_select">
							<option>월</option>
							<c:forEach begin="1" end="12" var="i">
								<c:choose>
									<c:when test="${i < 10 }">
										<option value="0${i }">0${i }</option>
									</c:when>
									<c:otherwise>
										<option value="${i }">${i }</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
						<input type="text" name="member_birth_day" placeholder="일" maxlength="2" class="birth_input">
					</li>
					<li>
						<label>이메일</label><br>
						<input type="text" placeholder="이메일" class="join_input">
					</li>
					<li>
						<label>지역</label><br>
						<input type="text" placeholder="지역" class="join_input">
					</li>
					<li>
						<label>스터디 분야</label><br>
						<div id="check_study_type">
							<input type="checkbox" name="study_type" value="수능"><span class="check_study_type_label">수능</span>
							<input type="checkbox" name="study_type" value="공무원"><span class="check_study_type_label">공무원</span>
							<input type="checkbox" name="study_type" value="면접"><span class="check_study_type_label">면접</span>
							<input type="checkbox" name="study_type" value="자격증"><span class="check_study_type_label">자격증</span>
							<input type="checkbox" name="study_type" value="어학"><span class="check_study_type_label">어학</span>
							<input type="checkbox" name="study_type" value="기타"><span class="check_study_type_label">기타</span>
						</div>
					</li>
					<li><input type="submit" value="JOIN"></li>
				</ul>
			</form>
		</div>
		
	</div>
</body>
</html>