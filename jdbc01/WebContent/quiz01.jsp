<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB Table</title>
</head>
<body>
<h3>1. DB에 있는 값들로 처리하시오.</h3>
<%
	//DB연동
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "jsp", pwd = "1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "select * from student";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>	
	<table border="1">
		<tr>
			<th>학번</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th>
		</tr>
			<%while(rs.next()){%>
				<tr>
					<td><%= rs.getString("학번") %></td>
					<td><a href="quizInfo.jsp?아아=<%=rs.getString("이름")%>"><% 
						out.print(rs.getString("이름")); 
						String name = rs.getString("이름");
						%></a></td>
					<td><%= rs.getString("국어") %></td>
					<td><%= rs.getString("영어") %></td>
					<td><%= rs.getString("수학") %></td>
				<tr>
			<%}%>	
	</table>
</body>
</html>