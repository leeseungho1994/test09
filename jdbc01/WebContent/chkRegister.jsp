<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
</head>
<script type="text/javascript">
	alert("회원가입을 축하합니다!!!")
</script>
<body>
<%
	response.setCharacterEncoding("utf-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "jsp", pwd = "1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "insert into members(id, pwd, name, addr, tel) values(?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
%>
<%
	out.print(request.getParameter("id"));
%>
</body>
</html>