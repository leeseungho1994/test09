<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		session.setAttribute("id", "길동"); //앞의 이름으로 값을 설정한다.
		session.setAttribute("age", "23");
		session.setAttribute("key", "123a");
	%>
	<h1>세션이 설정되었습니다.</h1>
	<a href="getSession.jsp">getSession(세션확인)이동</a>
	<a href="delSession.jsp">delSession(세션삭제)이동</a>
</body>
</html>