<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 
	 <% String[] str = {"111", "222", "333", "444"}; %>
	 <c:set var="str" value="<%=str %>" />
	 <c:forEach var="s" items="${str }">
	 	${s }<br>
	 </c:forEach>
	 
<hr>
	<% String s = "hello"; %>
	<c:set var="num01" value="<%=s %>"/>
	<c:if test='${num01 == "hello" }'>
		두 값은 같다.
	</c:if> 
	 
<hr>

	 <c:set var="num" value="hello"/> <!-- c:set은 변수 설정 -->
	 num => ${num }
	 num => <c:out value="${num }"/> <!-- c:out은 변수 출력 -->
	 <%--= num --%> <!-- jstl에서 사용한 문법은 jsp문법에서는 사용할 수 없다. -->
<hr>

	 <c:out value="text jstl"/> <!-- c:out은 기본적으로  출력해주는 문법이다.-->
	 
</body>
</html>