<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03</title>
</head>
<body>
<h1>쿠키생성</h1>
	<%
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5); //쿠키를 얼마나 살려둘거냐???
		response.addCookie(cookie);//사용자한테 쿠키를 추가해줘서 응답해준다.
	%>
	<script type="text/javascript">
		window.close()
	</script>
</body>
</html>