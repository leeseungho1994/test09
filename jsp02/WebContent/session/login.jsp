<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>login.jsp<br>
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="submit" value="로그인"><br>
	</form>
</body>
</html>