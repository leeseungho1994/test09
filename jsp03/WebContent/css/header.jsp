<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style type="text/css">
      .h{color : #5D5D5D; text-align: center;}
      .div{ text-align: right;}
      .a{ padding-right: 20px;}
   </style>
</head>
<body>
 <h1 class = "h">CARE LAP</h1>
   <hr>
   <div class = "div">
   <a class = "a" href="index.jsp">HOME</a>
   <a class = "a" href="memberInfo.jsp">회원정보</a>
   <a class = "a" id = "log" href="login.jsp">로그인</a>
   <hr>

	<%if(session.getAttribute("sessionName") != null){%>
  	 	<script type="text/javascript">
			document.getElementById("log").innerHTML = "로그아웃";
			document.getElementById("log").href = "logOut.jsp"
		</script>
	<%}%>
</body>
</html>