<%@page import="java.util.Enumeration"%>
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
		request.setCharacterEncoding("utf-8");
	
	//아래처럼 사용하면 해당하는 이름을 가져올 수 있다. name
	//우리가 java해서 했던 iterator의 개념과 비슷하다고 보면된다.
	Enumeration paramEunm = request.getParameterNames();
	while(paramEunm.hasMoreElements()){
		String n = (String)paramEunm.nextElement();
		out.print(n + "<br>");
	}
	
	//아래 값은 checkbox를 여러개 선택해도 해당 값을 하나 밖에 찍어주지 않는다.
	//String chk = request.getParameter("chk");

	//checkbox의 경우에는 여러개의 값을 받을 수 있기 때문에 values로 받아준다.
	//또한 그에 맞게 String[] 배열로 받아줘야한다.
	String[] chk = request.getParameterValues("chk");
	
	//우리가 제출할 때 아무것도 클릭하지않고 제출하는 경우에는 null포인터 에러가 발생한다.
	//그렇기 때문에 콘솔창에서 찍어주는 System.out.print로 에러를 찍어서 찾아내는 능력을 길러야한다.
	System.out.print(chk);
	if (chk != null) {
		for (int i = 0; i < chk.length; i++) {
			out.print(chk[i]);
		}
		//위와 아래 또한 동일한 값을 가져오나 강화 for문과 일반 for문의 차이다.
		out.print("<hr>");
		for (String s : chk) {
			out.print(s);
		}
	}else{%>
	<!-- 
		out.print("<table border='1'>");
		out.print("<tr><th>값을 체크해주세요...</th></tr>");
		out.print("</table>");
	-->
		<table border='1'>
			<tr><th>값을 체크해주세요...</th></tr>
		</table>
	<% } %>
</body>
</html>