<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="members.MemberDAO" />
<script type="text/javascript">
	alert("회원 정보가 삭제 되었습니다!!!")
	location.href="memberInfo.jsp"
</script>

<%
	String upId = request.getParameter("id");
	dao.memberDelete(upId);
%>
</body>
</html>