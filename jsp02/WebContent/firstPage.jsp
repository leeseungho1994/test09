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
		//pageContext범위는 현재 페이지에서만 가능하다. 그렇기 때문에 거의 사용하지않는다.
		//request경우에은 다음 페이지까지는 가능하나 forward를 사용해줘야한다.
		//forward의 기능을 사용하면 현재페이지를 거처서 다음 페이지를 가게된다.
		//session의 경우에는 현재 브라우저가 계속 켜져있다면 유지가 가능하다.
		//application의 경우에는 서버가 켜져있는 경우에는 유지가 가능하다.
		//나중에는 세션을 많이 사용할 것이다.
		
		pageContext.setAttribute("name", "page man");
		request.setAttribute("name", "page man");
		session.setAttribute("name", "session man");
		application.setAttribute("name", "application man");
	%>
	<h3>firstPage</h3>
	하나의 페이지 속성 : <%= pageContext.getAttribute("name") %><br>
	하나의 요청 속성 : <%= request.getAttribute("name") %><br>
	하나의 세선 속성 : <%= session.getAttribute("name") %><br>
	하나의 어플 속성 : <%= application.getAttribute("name") %><br>
	<hr>
	<a href="secondPage.jsp">secondPage이동</a>
	<%
		request.getRequestDispatcher("secondPage.jsp").forward(request,response);
	%>
</body>
</html>