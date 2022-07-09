<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page♩</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<style type="text/css">
.container{
	width:1200px; 
	max-width:none!important;
}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<!-- mypage sidebar -->
		<jsp:include page="mypage_sidebar.jsp"/>
		<!-------------------->
		
		<div id="mypage_my_info">
			<div id="member_id">
				id
			</div>
			<div id="member_name">
				name
			</div>
			<div id="member_gender">
				gender
			</div>
			<div id="member_age">
				age
			</div>
			<div id="member_birth">
				birth
			</div>
			<div id="member_email">
				email
			</div>
			<div id="member_phone">
				phone
			</div>
			<div id="member_space">
				space
			</div>
			<div id="member_study_type">
				study type
			</div>
			<div>
				<input type="button" value="수정">
			</div>
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>