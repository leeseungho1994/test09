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
<jsp:useBean id="dao" class="members.MemberDAO" />
<%@include file = "../css/header.jsp" %>
<h1 style="text-align: center">개인 정보</h1>
	<%
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO d : list){ 
		if(request.getParameter("id").equals(d.getId())){
		%>
		<table align="center">
			<tr>
				<th style="padding-right: 20px;">아 이 디</th><td><%=d.getId()%></td>
			</tr>
			<tr>
				<th style="padding-right: 20px;">비밀번호</th><td><%=d.getPwd()%></td>
			</tr>
			<tr>
				<th style="padding-right: 20px;">이 름</th><td><%=d.getName()%></td>
			</tr>
			<tr>
				<th style="padding-right: 20px;">주 소</th><td><%=d.getAddr()%></td>
			</tr>
			<tr>
				<th style="padding-right: 20px;">전화번호</th><td><%=d.getTel()%></td>
			</tr>
			<tr>
				<th><button type="button" onclick="location.href='updateInfo.jsp?id=<%=d.getId()%>'">수정</button></th>
				<th><button type="button" onclick="location.href='deleteInfo.jsp?id=<%=d.getId()%>'">삭제</button></th>
			</tr>
		</table>
	<% }
	} %>
<%@include file = "../css/footer.jsp" %>
</body>
</html>