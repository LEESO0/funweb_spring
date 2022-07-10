<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Detail♩</title>
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
		
		<div id="study_detail_area">
			<div id="study_type">
				분야
			</div>
			<div id="study_time">
				타임
			</div>
			<div id="study_num_of_people">
				모집인원
			</div>
			<div id="study_contact_type">
				대면/비대면			
			</div>
			<div id="study_space">
				지역
			</div>
			
			<hr>
			
			<div id="study_writer">
				작성자
			</div>
			<div id="study_subject">
				제목
			</div>
			<div id="study_content">
				내용
			</div>
			<div id="study_date">
				날짜
			</div>
			<div id="study_status">
				모집중/모집완료
			</div>
		</div>
		
		<div id="register_study">
			<input type="button" value="신청">
			<input type="button" value="문의">
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>