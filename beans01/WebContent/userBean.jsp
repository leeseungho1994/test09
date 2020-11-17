<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>userBean.jsp<br>
	<!-- 일반적으로 우리가 아래와 같이 만들 수 있지만 bean으로도 만들 수 있다. -->
	<%-- MemberDTO dto = new MemberDTO(); --%>
	<!-- 아래와 같이 만드는 것은 dto라는 변수를 class members패키지안에 MemberDTO클래스를 이용해 만든다는 의미이다. -->
	<jsp:useBean id="dto" class="members.MemberDTO" />
	<h3>저장 전 출력</h3>
	<!-- 저장 전에 값을 넣었기 때문에 null값이 출력된다. -->
	<%=dto.getId() %> : <%=dto.getPwd() %> 
	
	<% dto.setId("test"); dto.setPwd("1234"); %>
	<h3>저장 후 출력</h3>
	<%=dto.getId() %> : <%= dto.getPwd() %>
</body>
</html>