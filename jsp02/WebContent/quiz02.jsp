<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>제 목</th>
			<th>조 회 수</th>
		</tr>
		<tr>
			<th><a href="quizResult02.jsp">안녕하세요</a></th>
			<th><% 
				if(application.getAttribute("count") == null){
					out.print(0);
				}else{
					out.print(application.getAttribute("count"));
				}
				%></th>
		</tr>
	</table>
</body>
</html>