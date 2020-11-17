<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result01</title>
</head>
<body>
	<b>request.getParmeterNames() 메서드 사용</b><br>
	
	<%
	//각 name의 값을 받아서 하나하나 출력
		request.setCharacterEncoding("utf-8");
				
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			//n값에 name이들어가 있다.
			String n = (String)paramEnum.nextElement();
			if(n.equals("season")){
				String season[] = request.getParameterValues(n);
				for(int i = 0; i < season.length; i++){
					out.print(n +":"+season[i] + "<br>");
				}
			}else{
				String name = request.getParameter(n);
				out.print(n + ":" + name + "<br>");
			}
		}
	%>
</body>
</html>