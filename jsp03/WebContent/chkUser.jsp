<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>chkUser.jsp<br>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String user = request.getParameter("user");
	if(user.equals("user")){%>
		<jsp:forward page = "userPage.jsp">
			<jsp:param value="user" name="name"/>
		</jsp:forward>
	<%}else{%>
		<jsp:forward page = "adminPage.jsp">
			<jsp:param value="admin" name="name"/>
		</jsp:forward>
	<%}
%>
</body>
</html>