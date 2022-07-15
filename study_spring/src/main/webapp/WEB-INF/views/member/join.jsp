<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join♩</title>
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
#insert_member_info ul li {
	list-style-type: none;
	margin: 5px;
}
#insert_member_info ul li label {
	width: 150px;
}
</style>
</head>
<body>
	<div class="container">
		
		<div id="insert_member_info">
			<form action="join" method="post">
				<ul>
					<li>
						<label>ID</label>
						<input type="text" name="member_id">
					</li>
					<li>
						<label>PASSWORD</label> 
						<input type="password" name="member_pass">
					</li>
					<li>
						<label>CHECK PASSWORD</label>
						<input type="password">
					</li>
					<li>
						<label>NAME</label>
						<input type="text" name="member_name">
					</li>
					<li>
						<label>GENDER</label>
						<input type="radio" name="member_gender" value="남">남
						<input type="radio" name="member_gender" value="여">여
					</li>
					<li>
						<label>BIRTH</label>
						<input type="text" name="member_birth_year" placeholder="년도(4자리)" maxlength="4">
						<select name="member_birth_month">
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
						<input type="text" name="member_birth_day" placeholder="일" maxlength="2">
					</li>
					<li>
						<label>EMAIL</label>
						<input type="text">
					</li>
					<li>
						<label>SPACE</label>
						<input type="text">
					</li>
					<li>
						<label>STUDY TYPE</label>
						<input type="checkbox" name="study_type" value="수능">수능
						<input type="checkbox" name="study_type" value="공무원">공무원
						<input type="checkbox" name="study_type" value="면접">면접
						<input type="checkbox" name="study_type" value="자격증">자격증
						<input type="checkbox" name="study_type" value="어학">어학
						<input type="checkbox" name="study_type" value="기타">기타
					</li>
					<li><input type="submit" value="JOIN"></li>
				</ul>
			</form>
		</div>
		
	</div>
</body>
</html>