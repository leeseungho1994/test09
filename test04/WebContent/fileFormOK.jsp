<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileForm.jsp</title>
</head>
<body>fileFormOK.jsp<br>
	<%
		//여기서 말하는 fileUpDown은 우리가 아까 만들었더 폴더의 실질적인 위치이다. 경로를 얻어온 것이라고 보면된다.
		String path = application.getRealPath("fileUpDown");
		out.print("path : " + path);
		int size = 1024*10000; //10m 파일 사이지
		String file = ""; String oriFile = ""; //나중에 확인하기 위해서 만들어놓은것이다.
		//new DefaultFieRenamePolicy()똑같은 파일을 올리면 넘버링을 해준다.
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy()); 
		file = multi.getFilesystemName("file");
		oriFile = multi.getOriginalFileName("file");
		out.print("저장될 파일 이름 : "+file);
		out.print("실제 파일 이름 : "+oriFile);
		response.sendRedirect("fileForm.jsp");
	%>
</body>
</html>