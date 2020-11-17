<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie</title>
</head>
<body> index.jsp<br>
	<h1 style="color:skyblue;">CARE LAB</h1>
	<H3>안녕하세요</H3>
	<%
		boolean bool = false;
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5); //쿠키를 얼마나 살려둘거냐???
		response.addCookie(cookie);//사용자한테 쿠키를 추가해줘서 응답해준다.
		
		//cookie의 이름과 값을 가져와서 출력해주는 코드
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c: cookieArr){
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<hr>");
				//값을 가져와서 testCookie가 있으면 해당하는 창이 안뜬다.
				if(c.getName().equals("testCookie")){
					bool = true;
				}
			}
		}
	%>
	
	<%if(bool == false){  //bool이라는 값이 false라면 팝업창을 열어주겠다.%>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300, height=250, top=500, left=500")
	</script>
	<%} %>
</body>
</html>