<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
<!-- 
	일반적으로는 로그인 한 사람만 이페이지로 넘어올 수 있다.
	하지만 직접적으로 해당 주소를 알아서 접근하면 null값으로 들어와서 들어올 수 있다.
	그렇기 때문에 if문으로 조건을 걸어서 못들어오게 막아줘야한다. 
	직접적으로 들어오게되는 경우에는 해당 nickName이 null로 들어오게 되기 때문에
	해당 값이 null일 경우에 경고창을 넘겨주고 해당 login페이지로 넘겨준다.
-->
	<%if(session.getAttribute("loginUser") == null){%>
		<script type="text/javascript">
			alert("로그인 먼저 진행하세요!!!")
			location.href="login.jsp";
		</script>
	<% }%>

	<%= session.getAttribute("loginUser") %>님 안녕하세요!!!<br>
	<a href="logout.jsp">로그아웃 이동</a>
	<a href="login.jsp">로그인 이동</a>
</body>
</html>