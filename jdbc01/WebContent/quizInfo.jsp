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
<title>인적사항</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "jsp", pwd = "1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "select * from student where 이름 = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, request.getParameter("아아"));
	
	ResultSet rs = ps.executeQuery();
%>
<%while(rs.next()){%>
<h1>인적 사항</h1>
<h3>학번 : <%= rs.getString("학번") %></h3>
<h3>이름 : <%= rs.getString("이름") %></h3>
<h3>국.영.수 : <%= rs.getString("국어") %>,
			 <%= rs.getString("영어") %>,
			<%= rs.getString("수학") %>
</h3>
<%} %>
</body>
</html>