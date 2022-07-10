<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study with me♪</title>
<!-- bootstrap 5.2.0 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!--------------------->
<style type="text/css">
.container{
	width:1200px; 
	max-width:none!important;
}
#select_study_search_create {
	border: 1px solid black;
	width: 100%;
	height: 400px;
	text-align: center;
}
#select_study_search_create > span {
	line-height: 400px;
	border: 1px solid black;
	padding: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="inc/header.jsp"/>
		<!------------>
		
		<div id="select_study_search_create">
			<span onclick="location.href='search'">SEARCH</span>
			<span onclick="location.href='create'">CREATE</span>
		</div>
		
		<div id="best_readcount">
			<h3>조회수 높은 순(6개)</h3>
			<div id="study_list_best_readcount">
				<div>
					
				</div>
			</div>
		</div>
		
		<div id="recommend_study">
			<h3>추천(3개)</h3>
			<div id="study_list_best_readcount">
				<div>
					
				</div>
			</div>
		</div>
		
		<!-- footer -->
		<jsp:include page="inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>