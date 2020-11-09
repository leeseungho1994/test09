<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>postMethod.jsp</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% response.setCharacterEncoding("utf-8"); %>
	postMethod.jsp<br>
	<!--
	 우리는 request를 html언어로 번역해서 request한 값을 응답해준다.
	 그리고 그 값을 UTF-8방식으로 처리해주라고 명시를 해주어야한다. 
	 -->
	id : <%= request.getParameter("id") %><br>
	pwd : <%= request.getParameter("pwd") %><br>
	name : <%= request.getParameter("name") %><br>
</body>
</html>