<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
</head>
<body>
	<form action="memRegisterChk.jsp" method="post">
		<h1 style= "text-align: left; padding-left: 30px;">회원가입 페이지</h1>
		<b>아이디 </b><input type = "text" name="id" placeholder="아이디"><br>
		<b>비밀번호 </b><input type = "password" name="pwd" placeholder="비밀번호"><br>
		<b>이름 </b><input type = "text" name="name" placeholder="이름"><br>
		<b>주소 </b><input type = "text" name="addr" placeholder="주소"><br>
		<b>전화번호 </b><input type = "text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="가입하기">
	</form>

</body>
</html>