<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community♩</title>
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
		
		<div id="commu_search">
			<select>
				<option>제목</option>
			</select>
			<input type="text">검색
		</div>
		
		<div id="commu_list">
			<table>
				<tr>
					<th>no</th>
					<th>subject</th>
					<th>writer</th>
					<th>date</th>
				</tr>
			</table>
		</div>
		
		<div id="commu_create">
			<input type="button" value="CREATE">
		</div>
		
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp"/>
		<!------------>
	</div>
</body>
</html>