<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	구글로 이동합니다.
	<%
		//response는 응답으로 해당 서버를 보내준다.
		//사용자가 요청하면 서버에서 확인하고 응답해준다 아래 내용을 보내줬다.
		response.sendRedirect("http://www.google.co.kr");
	%>
</body>
</html>