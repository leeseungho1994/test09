<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<jsp:useBean id="member" class="members.MemberDTO" />
	<jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="pwd" name="member"/>
	
	<jsp:useBean id="dao" class="members.MemberDAO" />
	<%
		boolean bool1 = false; boolean bool2 = false;
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO d : list){
			if( member.getId().equals(d.getId()) && member.getPwd().equals(d.getPwd()) ){
				bool1 = true; bool2 = true;
				session.setAttribute("sessionName", d.getId());
			}
			else if( member.getId().equals(d.getId()) ){
				bool1 = true;
			}else if( member.getPwd().equals(d.getPwd()) ){
				bool2 = true;
			}
		}
		
		if(bool1 == false){%>
			<script type="text/javascript">
				alert("등록되지 않은 아이디입니다...")
				location.href="login.jsp"
			</script>
		<%}else if(bool2 == false){%>
			<script type="text/javascript">
				alert("등록되지 않은 비밀번호입니다...")
				location.href="login.jsp"
			</script>
		<%}else if(bool1 == true && bool2 == true){
			response.sendRedirect("successLogin.jsp");
		} %>	
</body>
</html>