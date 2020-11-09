<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<form action="getMethod01.jsp" >
		<input type="text" name="name"><br>
		<input type="radio" name="gender" value="남자">남
		<input type="radio" name="gender" value="여자">여<br>
		<input type="submit" value="쿼리 전송">
	</form>
<hr>
	<form action="postMethod01.jsp" method="post">
		<input type="text" name="name1"><br>
		<input type="radio" name="gender1" value="남자">남
		<input type="radio" name="gender1" value="여자">여<br>
		<input type="submit" value="쿼리 전송">
	</form>
</body>
</html>