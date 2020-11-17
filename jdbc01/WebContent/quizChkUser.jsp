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
<title>로그인 확인</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "jsp", pwd = "1234";
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "select * from members";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();

	
	boolean bool1 = false; boolean bool2 = false;
	while(rs.next()){
		if(rs.getString("id").equals(request.getParameter("id")) && 
				rs.getString("pwd").equals(request.getParameter("pwd"))){	
				String n = null;
				
				String sql1 = "select * from members where id = ?";
				PreparedStatement ps1 = con.prepareStatement(sql1);
				ps1.setString(1, request.getParameter("id"));
				ResultSet rs1 = ps1.executeQuery();
				if(rs1.next()){
					n = rs1.getString("name");
				}
				session.setAttribute("loginUser", n);
%>
				<script type="text/javascript">
					alert('<%=n%>'+"님 반갑습니다!!!")
					location.href="main.jsp"
				</script>
<%		}else if(rs.getString("id").equals(request.getParameter("id")) &&
			rs.getString("pwd").equals(request.getParameter("pwd")) == false){
			bool1 = true;
		}else if(rs.getString("id").equals(request.getParameter("id")) == false &&
				rs.getString("pwd").equals(request.getParameter("pwd"))){
				bool2 = true;
			}
	}%>
<%if(bool1 == false){%>
		<script type="text/javascript">
			alert("일치하는 아이디가 없습니다...")
			location.href="quizLogin.jsp"
		</script>
	<%} else if(bool2 == false){%>
		<script type="text/javascript">
			alert("일치하는 비밀번호가 없습니다...")
			location.href="quizLogin.jsp"
		</script>
	<%} %>
	
</body>
</html>