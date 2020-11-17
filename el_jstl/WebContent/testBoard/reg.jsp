<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 페이지</title>
</head>
<body>reg.jsp<br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="dto" class="testBoard.BoardDTO"/>
<!-- 
	이렇게 쓰면 이전에 regForm에서 사용자가 데이터를 입력하고 
	submit을 입력하면 해당 페이지로 들어오게 되고 해당 값을 dto에 다 들어오게 된다.
	setProperty는 regForm에 넘어온 변수가 name=dto는 위에 만든 객체에 값에 자동적으로 들어가게된다.
-->
<jsp:setProperty property="*" name="dto"/> 
<jsp:useBean id="dao" class="testBoard.BoardDAO"/>
${dao.insert(dto) }
<c:redirect url="list.jsp"/>

</body>
</html>