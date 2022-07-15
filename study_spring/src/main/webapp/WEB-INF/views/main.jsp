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
	width:100%;
	padding: 0px; 
	max-width:none!important;
	height: auto;
	min-height: 100%;
	margin: 0 auto -200px;
}
footer {
	width: 100%;
	height: 200px;
	clear: both;
}
.push {
	width: 100%;
	height: 200px;
	float: left;
}
#contatner_inc_footer {
	width: 100%;
	height: 100%;
	background-color: #BBBCBF;
}
#select_study_search_create {
	width: 100%;
	height: 400px;
	text-align: center;
	background-color: #C4D7E0;
	padding-top: 181px;
}
#select_btn {
	width: 1200px;
	margin: 0 auto;
	height: 100%;
}
#best_readcount {
	width: 1200px;
	margin: 0 auto;
}
#recommend_study {
	width: 1200px;
	margin: 0 auto;
}
/*  */
.btn-0 {
	margin: 0 8px;
	width: 150px;
	padding: 10px;
	background-color: #6E85B7;
	border: 1px solid #6E85B7;
	color: white;
	border-radius: 10px;
	box-shadow: 0px 0px 15px gray;
}
.btn-0:hover {
	background-color: #C4D7E0;
	border: 1px solid #6E85B7;
	color: #6E85B7;
	font-weight: bolder;
}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<jsp:include page="inc/header.jsp"/>
		<!------------>
		
		<div id="select_study_search_create">
			<div id="select_btn">
				<button type="button" class="btn-0" onclick="location.href='search'">SEARCH</button>
				<button type="button" class="btn-0" onclick="location.href='create'">CREATE</button>
			</div>
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
		<div class="push"></div>
		
	</div>
		<!-- footer -->
		<jsp:include page="inc/footer.jsp"/>
		<!------------>
</body>
</html>