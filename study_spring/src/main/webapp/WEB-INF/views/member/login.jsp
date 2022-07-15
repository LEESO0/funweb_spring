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
#login_member ul li {
	list-style-type: none;
	margin: 5px;
}
#login_member ul li label {
	width: 150px;
}
</style>
</head>
<body>
	
	<div class="container">
		<div id="login_member">
			<form action="login" method="post">
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
						<input type="submit" value="LOGIN">
					</li>
				</ul>
			</form>
		</div>
	</div>
	
</body>
</html>