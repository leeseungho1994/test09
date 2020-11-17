<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(session.getAttribute("sessionName") == null){%>
		<script type="text/javascript">
			alert("로그인 먼저 해주세요!!!")
			location.href="login.jsp"
		</script>	
	<%}%>
<%@include file = "../css/header.jsp" %>
	<jsp:useBean id="dao" class="members.MemberDAO" />
	<h1 style="text-align: center;">회원 목록</h1>
	<table border="1" align="center">
		<tr>
			<th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
	<% 
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO d : list){%>
		<tr>
			<td width="100"><a href="personalInfo.jsp?id=<%=d.getId()%>"><%=d.getName()%></a></td>
			<td width="100"><%=d.getAddr()%></td>
			<td width="100"><%=d.getTel()%></td>
		</tr>		
	<%}%>
	</table>
<%@include file = "../css/footer.jsp" %>
</body>
</html>