<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	if(application.getAttribute("count") == null){
		application.setAttribute("count", 1);
	}else{
		application.setAttribute("count", (int)application.getAttribute("count")+1);
	}
%>
<%--
	String count = (String)application.getAttribute("count");
	int c=1;
	if(count == null){
		application.setAttribute("count",c+"" );
	}else{
		c = Integer.parseInt(count);
		c++;
		application.setAttribute("count",c+"" );
	}
--%>
	<h1>게시글입니다.</h1>
	<h3>공지사항입니다.</h3>
	jsp application을 이용한 조회수 올리기 문제입니다.
	<a href="quiz02.jsp">돌아가기<a>
</body>
</html>