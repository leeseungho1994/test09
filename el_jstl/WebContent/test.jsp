<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- 이전에 사용해떤 방법 -->
	<%--String se[] = request.getParameterValues("se");--%>
	
	<c:forEach var="s" items="${paramValues.se }">
		${s }<br>
	</c:forEach>
</body>
</html>