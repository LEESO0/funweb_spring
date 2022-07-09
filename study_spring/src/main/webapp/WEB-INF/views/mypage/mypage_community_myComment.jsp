<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="commu_search">
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
			<c:forEach begin="1" end="4">
				<tr>
					<th>no</th>
					<th>subject</th>
					<th>writer</th>
					<th>date</th>
				</tr>
				<tr><td>comment</td></tr>	
			</c:forEach>
		</table>
	</div>

</body>
</html>