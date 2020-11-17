<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delSession.jsp<br>
<h1>세션이 삭제되었습니다.</h1>
<%
	//session.removeAttribute("age"); //특정 세션의 값만 삭제
	//session.setMaxInactiveInterval(5); //5초후에 모드 세션을 종료하겠다.
	session.invalidate(); //모든 세션을 바로 삭제하겠다.
%>
	<a href="getSession.jsp">getSession(세션확인)이동</a>
	<a href="setSession.jsp">setSession(세션설정)이동</a>
</body>
</html>