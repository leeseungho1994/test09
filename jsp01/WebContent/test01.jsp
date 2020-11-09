<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11.09 First day JSP01</title>
</head>
<body>
	<%
		int num = 123;
		System.out.print(num); //콘솔창
		out.print(num); //웹 브라우저
	%>
	<hr>
	
	<h1><%String str = "JSP";
	out.print(str + "시작입니다");%></h1>
	<h1><%out.print(str + "끝입니다"); %></h1>
	<%-- JSP 주석 --%>
	<hr>
	
	<%= str %> <%-- 옆의 코드는 out.print와 동일한 결과 값이다. --%>
	
	<h1>자바 명령어로 덧셈 연산</h1>
	<% int a = 10; int b = 20; %>
	<% out.print(a + " + " + b + " = " + (a+b)); %>
	<br>
	<%= a +" + " + b +" = " + (a+b)%>
	<hr>
	
	<input type="text" value="10 + 20 = <%= a+b %>">
	<hr>
	
	주소 : <input type="text" value="<%= "노량진" %>">
	<hr>
	
	<%
		int sum1 = 0; int sum2 = 0; int sum3 = 0;
		for(int i=1; i<=100; i++){
			sum1 = sum1 + i;
			if(i % 2 == 0){
				sum2 = sum2 + i;
			}else if(i % 2 == 1){
				sum3 = sum3 + i;
			}
		}
	%>
	
	<%= "1 + 2 + 3 + ... + 100 = " + sum1 %>
	<br>
	<%= "1 ~ 100까지의 짝수의 합 : " +  sum2 %>
	<br>
	<%= "1 ~ 100까지의 홀수의 합 : " +  sum3 %>
	<hr>
	
	<% int cnt01 = 0; %>
	<%= cnt01++ %>
	<hr>
	
	<%! int cnt02 = 0; %>
	<%= cnt02++ %>
	<hr>
	
</body>
</html>