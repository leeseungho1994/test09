<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%@include file = "../css/header.jsp" %>
<h1 style= "text-align: left; padding-left: 30px;">로그인 페이지입니다</h1>
<form action = "loginChk.jsp">
<table align="right">
	<tr>
		<td><input type="text" name="id" placeholder="아이디"></td>
		<td rowspan="2"><input style="height: 50px; width:50px; padding-right: 44px" type="submit" value="로그인"></td>
	</tr>
	<tr>
		<td><input type="text" name="pwd" placeholder="비밀번호"></td>
	</tr>
	<tr>
		<td style="padding-right: 115px;"><a href="memRegister.jsp">회원가입</a></td>
	</tr>
</table>
<br><br><br><br><br>
</form>
<%@include file = "../css/footer.jsp" %>
</body>
</html>