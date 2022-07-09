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
	<div id="study_status">
		<select>
			<option>모집중</option>
		</select>
	</div>

	<div id="study_list">
		<c:forEach begin="1" end="4">
			<div id="study_list_line">
				<c:forEach begin="1" end="4">
					<div id="study">
						study
					</div>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</body>
</html>