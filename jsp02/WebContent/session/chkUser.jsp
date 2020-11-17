<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 화면</title>
</head>
<body>chkUser.jsp<br>
	<%
		String id = "1", pwd="1", nickName = "홍길동";
		if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd")) ){
			session.setAttribute("loginUser", nickName);
			response.sendRedirect("main.jsp"); //여기 페이지는 로그인한 사용자만 들어올 수 있는 페이지이다.
			
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>