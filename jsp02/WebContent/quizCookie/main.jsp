<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인 페이지</h1>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c: cookieArr){
				if(c.getName().equals("testCookie")){
					bool = true;
				}
			}
		}
	%>
	<%if(bool == false){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300, height=250, top=500, left=500")
	</script>
	<%}%>
</body>
</html>