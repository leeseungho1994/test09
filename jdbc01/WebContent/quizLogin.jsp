<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<h1>로그인</h1>
	<form action="quizChkUser.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="submit" value="로그인"><a href="register.jsp">회원 가입</a><br>
	</form>
</body>
</html>