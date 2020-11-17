<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file = "../css/header.jsp" %>
	<%if(session.getAttribute("sessionName") == null){%>
		<script type="text/javascript">
			alert("로그인 먼저 해주세요!!!")
			location.href="login.jsp"
		</script>	
	<%}%>
	<h1 style= "text-align: left; padding-left: 30px;">로그인 성공</h1>
	<%@include file = "../css/footer.jsp" %>
</body>
</html>