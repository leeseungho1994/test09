<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% response.setCharacterEncoding("utf-8"); %>
	postMethod.jsp<br>
	
	입력하신 수는 <%= request.getParameter("name1") %> 이고,<br>
	당신은 <%= request.getParameter("gender1") %>이군요
</body>
</html>