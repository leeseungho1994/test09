<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setGet.jsp<br>	
	<!-- 객체를 생성 -->
	<jsp:useBean id="member" class="members.MemberDTO" />
	
	<!-- member변수로 만든 객체의 id변수를 가져와라라는 의미 -->
	=><%= member.getId() %><br>
	id : <jsp:getProperty property="id" name="member"/><br>
	pwd : <jsp:getProperty property="pwd" name="member"/><hr>
	
	<!-- 이전 페이지에서 넘어온 정보가 들어온다. -->
	<jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="pwd" name="member"/>
	id : <jsp:getProperty property="id" name="member"/><br>
	=><%= member.getId() %><br>
	pwd : <jsp:getProperty property="pwd" name="member"/>
	
	<!-- 하지만 실질적으로 사용하지는 않을 것이다. -->
</body>
</html>