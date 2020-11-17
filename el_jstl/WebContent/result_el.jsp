<%@page import="java.util.ArrayList"%>
<%@page import="test.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<fmt:requestEncoding value="utf-8"/>

	el id : ${ param.id }<br>
	el pw : ${ param.pwd }<br>
	<hr>
	
	<jsp:useBean id="dao" class="test.TestDAO" />
	<c:set var="result" value="${dao.userChk(param.id, param.pwd) }"/>
	<c:if test="${result == 0 }">
		인증 성공입니다.
	</c:if>
	<hr>
	
	<h3>개인 정보</h3>
	<c:set var="dto" value="${dao.getUser(param.id) }"/>
	이름 : ${dto.name }<br>
	주소 : ${dto.addr }
	<hr>
	
	<h3>모든 사용자 표현</h3>
	<table border="1">
		<tr> <th>이름</th><th>주소</th> </tr>
		<c:forEach var="dto" items="${dao.list() }">
			<tr>
				<td>${dto.name }</td> <td>${dto.addr }</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>모든 사용자 표현 이전 사용방식</h3>
	<table border="1">
		<tr> <th>이름</th><th>주소</th> </tr>
	<%ArrayList<TestDTO> list = dao.list();
	for(TestDTO d : list){%>
		<tr>
			<td><%=d.getName() %></td> <td><%=d.getAddr() %></td>
		</tr>
		<%} %>
	</table>
	<hr>
	
	<c:import url="login_el.jsp" />
	<%-- <c:redirect url="login_el.jsp" />  --%>
	<!-- 동일한 의미이다ㅏ. 아래 두 개의 코드 -->
	<%-- session.setAttribute("name", "홍길동"); --%>
	<c:set var="name" value="홍길동" scope="session" />
	<c:remove var="name"/>
	<c:set var="name" value="홍길동"/>
	
	<!-- 3개중에 하나가 돌아간다. -->
	<!-- if문 -->
	<!-- else -->
	<c:choose>
		<c:when test="${name eq '홍길동'}">홍길동이군요</c:when>
		<c:when test="${name == '김개똥'}">김개똥이군요</c:when>
		<c:otherwise>else가 작동하는군요</c:otherwise> 
	</c:choose>
	<hr>
	<form action="test.jsp">
		<input type="checkbox" name="se" value="spring">봄
		<input type="checkbox" name="se" value="summer">여름
		<input type="checkbox" name="se" value="fall">가을
		<input type="checkbox" name="se" value="winter">겨울
		<input type="submit">
	</form>
</body>
</html>