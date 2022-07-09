<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Search♩</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<style type="text/css">
.container{
	width:1200px; 
	max-width:none!important;
}
#select_study_condition {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="../inc/header.jsp"/>
		<!------------>
		
		<div id="select_study_condition">
			<form action="">
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
				<div id="submit_study_condition">
					<input type="submit" value="검색">
				</div>
				<div id="reset_study_condition">
					<input type="reset" value="초기화">
				</div>
			</form>
		</div>
		
		<div id="study_search_filter">
			<div id="search_keyword">
				<select>
					<option>제목</option>
				</select>
				<input type="text">검색
			</div>
			<div id="search_filter">
				<select>
					<option>모집중</option>
				</select>
			</div>
		</div>
		
		<!-- ajax로 list 구현 -->
		<div id="search_result_area">
		
		</div>
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>