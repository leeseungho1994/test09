<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webContent.jsp</title>
</head>
<body>
	<!-- 
		/ : 현재 프로젝트 위치(포트까지의 위치)
		../ : 현재 이치 이전 위치
		../../ : 헌재 위치에서 2단꼐 전 위치
	 -->
	 
	 <h1>webContent.jsp입니다.</h1>
	 <a href="test1/test1.jsp">test1이동합니다.</a><br> <!-- 앞에 /을 붙이면 절대경로 안붙일 경우에는 상대 경로이다. -->
	 <a href="test1/test2/test2.jsp">test2이동합니다.</a>
</body>
</html>