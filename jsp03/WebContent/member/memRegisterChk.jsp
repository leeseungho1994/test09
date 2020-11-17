<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="members.MemberDAO"/>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	
	dao.memberInsert(id, pwd, name, addr, tel);
%>
<script type="text/javascript">
	alert("회원가입 완료!!!")
	location.href="login.jsp"
</script>
</body>
</html>