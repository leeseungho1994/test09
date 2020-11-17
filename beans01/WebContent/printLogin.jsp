<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>printLogin.jsp<br>
	<!-- 
		하지만 사용시 주의해야하는 점은 getter setter가 세팅이 되어야한다.
		또한 우리가 사용하는 name의 속성과 MemberDTO의 변수값이 동일하고
		setter getter와 일치시켜야된다. 
		앞으로 계속 사용하게 된다.
	-->
	<jsp:useBean id="mem" class="members.MemberDTO" />
	<jsp:setProperty property="*" name="mem"/>
	id : <%=mem.getId() %><br>
	pwd : <%=mem.getPwd() %><br>
	name : <%=mem.getName() %><br>
	addr : <%=mem.getAddr() %><br>
	tel : <%=mem.getTel() %><br>
	
</body>
</html>