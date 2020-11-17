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
<h1>회원정보 수정</h1>
<jsp:useBean id="dao" class="members.MemberDAO" />
<%
	ArrayList<MemberDTO> list = dao.memberList();
	for(MemberDTO d : list){ 
	if(request.getParameter("id").equals(d.getId())){
%>
<form action = "updateChk.jsp">

	이름 : <input type="text" name="name" value="<%=d.getName()%>"><br>
	주소 : <input type="text" name="addr" value="<%=d.getAddr()%>"><br>
	전화번호 : <input type="text" name="tel" value="<%=d.getTel()%>"><br>
	<input type="hidden" name="id" value="<%=d.getId()%>">
	<input type="submit" value="완료">
	<input type="reset" value="취소">
</form>	
<%	} 
}%>
</body>
</html>