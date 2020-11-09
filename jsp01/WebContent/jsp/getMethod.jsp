<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMethod.jsp</title>
</head>
<body>
	<h3>getMehod.jsp</h3>
	<!-- 
	request를 통해서 요청한 값을 얻어올 수가 있다. 
	이제 서버에서 response를 해준다.
	-->
	넘어온 값 : <%= request.getParameter("n") %><br>
	넘어온 값 : <%= request.getParameter("n1") %><br>
	넘어온 값 : <%= request.getParameter("n2") %><br>
</body>
</html>