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
<title>회원 페이지</title>
</head>
<body>
<h1>회원들만의 페이지</h1>
	<%if(session.getAttribute("loginUser") == null){%>
		<script type="text/javascript">
			alert("로그인 먼저 진행하세요!!!")
			location.href="login.jsp";
		</script>
	<%}%>
	
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "jsp", pwd = "1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "select * from members";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	%>
	
	<table border="1">
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
		<%while(rs.next()){%>
		<tr>
			<td><%= rs.getString("id") %></td>
			<td><%= rs.getString("pwd") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("addr") %></td>
			<td><%= rs.getString("tel") %></td>
		</tr>
		<%}%>
	</table>
		<input type="button" value="로그아웃" onclick = "go()">
	<script type="text/javascript">
		function go(){
			location.href="delSession.jsp"
		}
	</script>
</body>
</html>